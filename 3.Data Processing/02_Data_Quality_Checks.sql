/*
=========================================================
Bright TV Audience Analytics
File: 04_Feature_Engineering.sql
Author: Alice Musindo
Date: July 2026
Description:
Derive new analytical features from the cleaned data produced in
03_Data_Cleaning.sql. These views feed into 05_Final_Dataset.sql.
Tools:
- Databricks SQL
=========================================================
*/

-- ---------------------------------------------------------------
-- SUBSCRIBER-LEVEL FEATURE: AGE GROUP
-- ---------------------------------------------------------------

CREATE OR REPLACE VIEW workspace.default.user_profiles_features AS
SELECT
    *,
    CASE
        WHEN age = 0                  THEN 'Infants'
        WHEN age BETWEEN 1 AND 12     THEN 'Kids'
        WHEN age BETWEEN 13 AND 19    THEN 'Teenager'
        WHEN age BETWEEN 20 AND 35    THEN 'Youth'
        WHEN age BETWEEN 36 AND 50    THEN 'Adult'
        WHEN age BETWEEN 51 AND 65    THEN 'Elder'
        WHEN age > 65                 THEN 'Pensioner'
    END AS age_groups,
    -- Flags incomplete sign-up records (age never captured) rather than
    -- reporting them as a genuine "Infants" audience segment downstream
    CASE WHEN age = 0 THEN 1 ELSE 0 END AS is_incomplete_profile
FROM workspace.default.user_profiles_clean;


-- ---------------------------------------------------------------
-- SESSION-LEVEL FEATURES: TIME AND DURATION
-- ---------------------------------------------------------------

CREATE OR REPLACE VIEW workspace.default.viewership_features AS
SELECT
    userid,
    Tv_channel,
    DATE_FORMAT(RecordDate2, 'yyyyMM')  AS month_id,
    CAST(RecordDate2 AS DATE)           AS watch_date,
    DATE_FORMAT(RecordDate2, 'dd')      AS day_of_week,
    DATE_FORMAT(RecordDate2, 'EEEE')    AS day_name,
    CASE
        WHEN DATE_FORMAT(RecordDate2, 'EEEE') IN ('Saturday', 'Sunday') THEN 'weekend'
        ELSE 'weekday'
    END AS day_classification,
    DATE_FORMAT(RecordDate2, 'MMMM')    AS month_name,
    HOUR(RecordDate2)                   AS hour_of_day,
    CASE
        WHEN DATE_FORMAT(RecordDate2, 'HH:mm:ss') BETWEEN '00:00:00' AND '05:59:59' THEN '01. Midnight'
        WHEN DATE_FORMAT(RecordDate2, 'HH:mm:ss') BETWEEN '06:00:00' AND '11:59:59' THEN '02. Morning'
        WHEN DATE_FORMAT(RecordDate2, 'HH:mm:ss') BETWEEN '12:00:00' AND '16:59:59' THEN '03. Afternoon'
        WHEN DATE_FORMAT(RecordDate2, 'HH:mm:ss') BETWEEN '17:00:00' AND '23:59:59' THEN '04. Evening'
    END AS time_of_day,

    DATE_FORMAT(`Duration 2`, 'HH:mm:ss') AS duration,

    -- Screen time bucket: FIXED boundary. The original logic started
    -- "Low Usage" at 5 minutes, which meant real sessions of 1-4 minutes
    -- fell into "No Usage" alongside sessions with zero duration. This
    -- version reserves "No Usage" strictly for duration = 0, so any real
    -- viewing time is counted as at least "Low Usage".
    CASE
        WHEN DATE_FORMAT(`Duration 2`, 'HH:mm:ss') = '00:00:00' THEN '04. No Usage'
        WHEN DATE_FORMAT(`Duration 2`, 'HH:mm:ss') < '00:30:00' THEN '01. Low Usage: <30 min'
        WHEN DATE_FORMAT(`Duration 2`, 'HH:mm:ss') < '01:00:00' THEN '02. Med Usage: <60 min'
        ELSE '03. High Usage: >60 min'
    END AS screen_time_bucket

FROM workspace.default.viewership_clean;
