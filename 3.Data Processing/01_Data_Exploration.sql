/*
=========================================================
Bright TV Audience Analytics
File: 06_Exploratory_Data_Analysis.sql
Author: Alice Musindo
Date: July 2026
Description:
Explore subscriber demographics and viewing patterns using FinalDataset,
created in 05_Final_Dataset.sql.
Tools:
- Databricks SQL
=========================================================
*/

-- Subscribers by Province (excluding the 'Uncategorized' placeholder, which
-- is not a real province — see 03_Data_Cleaning.sql)
SELECT
    Region,
    COUNT(DISTINCT sub_id) AS Subscribers
FROM workspace.default.FinalDataset
WHERE Region != 'Uncategorized'
GROUP BY Region
ORDER BY Subscribers DESC;

-- Subscribers by Gender
SELECT
    Gender,
    COUNT(DISTINCT sub_id) AS Subscribers
FROM workspace.default.FinalDataset
GROUP BY Gender;

-- Subscribers by Age Group (excluding incomplete/age=0 profiles)
SELECT
    age_groups,
    COUNT(DISTINCT sub_id) AS Subscribers
FROM workspace.default.FinalDataset
WHERE is_incomplete_profile = 0
GROUP BY age_groups
ORDER BY Subscribers DESC;

-- Sessions by day of week
SELECT
    day_name,
    COUNT(*) AS Sessions
FROM workspace.default.FinalDataset
GROUP BY day_name
ORDER BY Sessions DESC;

-- Sessions by channel
SELECT
    Tv_channel,
    COUNT(*) AS Sessions
FROM workspace.default.FinalDataset
GROUP BY Tv_channel
ORDER BY Sessions DESC;
