/*
=========================================================
Bright TV Audience Analytics
File: 03_Data_Cleaning.sql
Author: Alice Musindo
Date: July 2026
Description:
Standardise and clean the raw fields identified as problematic in
02_Data_Quality_Checks.sql. This produces clean, reusable views that
04_Feature_Engineering.sql builds on.
Tools:
- Databricks SQL
=========================================================
*/

-- ---------------------------------------------------------------
-- CLEAN SUBSCRIBER PROFILES
-- ---------------------------------------------------------------

CREATE OR REPLACE VIEW workspace.default.user_profiles_clean AS
SELECT
    UserID,

    -- Region: standardise blanks / 'None' text into an explicit 'Uncategorized'
    -- label rather than leaving them ambiguous
    CASE
        WHEN Province = ' '    THEN 'Uncategorized'
        WHEN Province = 'None' THEN 'Uncategorized'
        WHEN Province IS NULL  THEN 'Uncategorized'
        ELSE Province
    END AS Region,

    age,

    -- Email flag: FIXED. The original logic used OR across three conditions
    -- that were almost always true together (IS NOT NULL / = ' ' / NOT IN
    -- ('None')), which meant every row evaluated to 1 regardless of the
    -- actual value. This checks for the ABSENCE of a real email instead.
    CASE
        WHEN email IS NULL OR TRIM(email) = '' OR email = 'None' THEN 0
        ELSE 1
    END AS email_flag,

    -- Social media flag: same bug, same fix
    CASE
        WHEN `Social Media Handle` IS NULL
             OR TRIM(`Social Media Handle`) = ''
             OR `Social Media Handle` = 'None' THEN 0
        ELSE 1
    END AS sm_flag,

    -- Race: standardise 'other' and blank into an explicit 'None' label.
    -- True NULLs are left as NULL here on purpose (not silently overwritten)
    -- since a genuinely missing value and an explicit "other" response are
    -- different data points worth being able to tell apart later if needed.
    CASE
        WHEN Race = 'other' THEN 'None'
        WHEN Race = ' '     THEN 'None'
        ELSE Race
    END AS Race,

    -- Gender: same treatment as Race
    CASE
        WHEN gender = ' ' THEN 'None'
        ELSE gender
    END AS Gender

FROM workspace.default.bright_tv_userprofiles;


-- ---------------------------------------------------------------
-- CLEAN / STANDARDISE RAW CHANNEL NAMES
-- ---------------------------------------------------------------
-- Kept separate from feature engineering because this is correcting bad
-- source data (duplicate names for the same channel), not deriving a new
-- analytical feature.

CREATE OR REPLACE VIEW workspace.default.viewership_clean AS
SELECT
    COALESCE(UserID0, userid4) AS userid,
    RecordDate2,
    `Duration 2`,
    CASE
        WHEN Channel2 IN ('SawSee', 'Sawsee') THEN 'SawSee'
        WHEN Channel2 IN ('SuperSport Live Events', 'Live on SuperSport',
                          'Supersport Live Events', 'DStv Events 1') THEN 'Live Events'
        ELSE Channel2
    END AS Tv_channel
FROM workspace.default.bright_tv_viewership
QUALIFY ROW_NUMBER() OVER (
    PARTITION BY COALESCE(UserID0, userid4), RecordDate2, Channel2, `Duration 2`
    ORDER BY RecordDate2
) = 1;
-- The QUALIFY/ROW_NUMBER above removes the exact duplicate viewing records
-- surfaced in 02_Data_Quality_Checks.sql, keeping one copy of each.


-- ---------------------------------------------------------------
-- VALIDATION
-- ---------------------------------------------------------------

-- Should return 0 rows (no more nulls left as blanks/'None' text in Region)
SELECT COUNT(*) FROM workspace.default.user_profiles_clean WHERE Region IS NULL;

-- Should return 0 rows (no more exact duplicate viewing records)
SELECT userid, RecordDate2, Tv_channel, `Duration 2`, COUNT(*)
FROM workspace.default.viewership_clean
GROUP BY userid, RecordDate2, Tv_channel, `Duration 2`
HAVING COUNT(*) > 1;
