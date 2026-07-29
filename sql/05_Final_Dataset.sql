/* =========================================================
Bright TV Audience Analytics
File: 05_Final_Dataset.sql
Author: Alice Musindo
Date: July 2026
Description: Build the final analytical dataset by joining cleaned user and viewership data.
Tools: Databricks SQL
========================================================= */

CREATE OR REPLACE TABLE workspace.default.FinalDataset AS
SELECT
    COALESCE(v.UserID, u.UserID) AS Sub_ID,
    v.Month_ID,
    v.Watch_Date,
    v.Day_Of_Week,
    v.Day_Name,
    v.Day_Classification,
    v.Month_Name,
    v.TV_Channel,
    v.Time_Of_Day,
    v.Hour_Of_Day,
    v.Screen_Time_Bucket,
    v.Duration,
    u.Region,
    u.Age_Group,
    u.Email_Flag,
    u.SM_Flag,
    u.Race,
    u.Gender
FROM feature_viewership v
LEFT JOIN clean_user_profiles u
    ON v.UserID = u.UserID;
