/*
=========================================================
Bright TV Audience Analytics
File: 02_Data_Quality_Checks.sql
Author: Alice Musindo
Date: July 2026
Description:
Assess both raw tables for duplicates, missing values, and invalid values
before any cleaning is applied.
Tools:
- Databricks SQL
=========================================================
*/

-- ---------------------------------------------------------------
-- SUBSCRIBER PROFILES
-- ---------------------------------------------------------------

-- Duplicate Users
SELECT
    UserID,
    COUNT(*) AS duplicate_count
FROM workspace.default.bright_tv_userprofiles
GROUP BY UserID
HAVING COUNT(*) > 1;

-- Missing User IDs
SELECT COUNT(*)
FROM workspace.default.bright_tv_userprofiles
WHERE UserID IS NULL;

-- Missing Gender
SELECT COUNT(*)
FROM workspace.default.bright_tv_userprofiles
WHERE Gender = ' ' OR Gender IS NULL;

-- Missing Race
SELECT COUNT(*)
FROM workspace.default.bright_tv_userprofiles
WHERE Race IS NULL;

-- Missing Province
SELECT COUNT(*)
FROM workspace.default.bright_tv_userprofiles
WHERE Province = ' ' OR Province IS NULL;

-- Subscribers recorded at Age = 0 (flagged for review — a TV subscription
-- service should not have genuine 0-year-old account holders; these look
-- like incomplete sign-up records rather than a real "Infants" segment)
SELECT COUNT(*)
FROM workspace.default.bright_tv_userprofiles
WHERE age = 0;


-- ---------------------------------------------------------------
-- VIEWERSHIP
-- ---------------------------------------------------------------

-- Duplicate viewing records (same subscriber, same timestamp, same channel,
-- same duration logged more than once)
SELECT
    COALESCE(UserID0, userid4) AS userid,
    RecordDate2,
    Channel2,
    `Duration 2`,
    COUNT(*) AS duplicate_count
FROM workspace.default.bright_tv_viewership
GROUP BY COALESCE(UserID0, userid4), RecordDate2, Channel2, `Duration 2`
HAVING COUNT(*) > 1;

-- Viewing records with no resolvable subscriber ID at all
SELECT COUNT(*)
FROM workspace.default.bright_tv_viewership
WHERE UserID0 IS NULL AND userid4 IS NULL;

-- Viewing records that don't match a known subscriber (referential check)
SELECT COUNT(*) AS orphaned_viewing_records
FROM workspace.default.bright_tv_viewership vw
LEFT JOIN workspace.default.bright_tv_userprofiles up
    ON COALESCE(vw.UserID0, vw.userid4) = up.UserID
WHERE up.UserID IS NULL;

-- Distinct raw channel names, to size how much standardisation is needed
SELECT
    Channel2,
    COUNT(*) AS sessions
FROM workspace.default.bright_tv_viewership
GROUP BY Channel2
ORDER BY sessions DESC;
