/* =========================================================
Bright TV Audience Analytics
File: 03_Data_Processing.sql
Author: Alice Musindo
Date: July 2026
Description: Clean and standardize raw Bright TV user profile data.
Tools: Databricks SQL
========================================================= */

CREATE OR REPLACE TEMP VIEW clean_user_profiles AS
SELECT
    UserID,
    CASE
        WHEN Province IS NULL OR TRIM(Province) IN ('', 'None', ' ') THEN 'Uncategorized'
        ELSE Province
    END AS Region,
    Age,
    CASE
        WHEN Age = 0 THEN 'Infants'
        WHEN Age BETWEEN 1 AND 12 THEN 'Kids'
        WHEN Age BETWEEN 13 AND 19 THEN 'Teenager'
        WHEN Age BETWEEN 20 AND 35 THEN 'Youth'
        WHEN Age BETWEEN 36 AND 50 THEN 'Adult'
        WHEN Age BETWEEN 51 AND 65 THEN 'Elder'
        WHEN Age > 65 THEN 'Pensioner'
        ELSE 'Unknown'
    END AS Age_Group,
    CASE
        WHEN Email IS NULL OR TRIM(Email) IN ('', 'None', ' ') THEN 0
        ELSE 1
    END AS Email_Flag,
    CASE
        WHEN `Social Media Handle` IS NULL OR TRIM(`Social Media Handle`) IN ('', 'None', ' ') THEN 0
        ELSE 1
    END AS SM_Flag,
    CASE
        WHEN Race IS NULL OR TRIM(Race) IN ('', 'other', 'None', ' ') THEN 'None'
        ELSE Race
    END AS Race,
    CASE
        WHEN Gender IS NULL OR TRIM(Gender) IN ('', ' ') THEN 'None'
        ELSE Gender
    END AS Gender
FROM workspace.default.bright_tv_userprofiles;
