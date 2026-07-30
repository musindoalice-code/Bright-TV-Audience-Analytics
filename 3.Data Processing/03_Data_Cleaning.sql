/*
=========================================================
Bright TV Audience Analytics
File: 01_Data_Exploration.sql
Author: Alice Musindo
Date: July 2026
Description:
Explore the structure and contents of the two raw source tables before any
cleaning or transformation is applied.
Tools:
- Databricks SQL
=========================================================
*/

-- View first 100 records from the viewership dataset
SELECT *
FROM workspace.default.bright_tv_viewership
LIMIT 100;

-- View first 10 records from the user profiles dataset
SELECT *
FROM workspace.default.bright_tv_userprofiles
LIMIT 10;

-- Count subscribers
SELECT
    COUNT(*)               AS TotalRows,
    COUNT(DISTINCT UserID) AS TotalSubscribers
FROM workspace.default.bright_tv_userprofiles;

-- View distinct gender values
SELECT DISTINCT Gender
FROM workspace.default.bright_tv_userprofiles;

-- View distinct race values
SELECT DISTINCT Race
FROM workspace.default.bright_tv_userprofiles;

-- View distinct provinces
SELECT DISTINCT Province
FROM workspace.default.bright_tv_userprofiles;

-- View distinct TV channels (raw, before standardisation — expect to see
-- near-duplicate names like 'SawSee' / 'Sawsee' and multiple SuperSport
-- Events labels here; these get merged in 03_Data_Cleaning.sql)
SELECT DISTINCT Channel2
FROM workspace.default.bright_tv_viewership;

-- Confirm which ID columns actually carry the subscriber ID in the raw
-- viewership table (used to build the COALESCE(UserID0, userid4) logic
-- in 05_Final_Dataset.sql)
SELECT
    COUNT(*)                       AS TotalRows,
    COUNT(UserID0)                 AS PopulatedUserID0,
    COUNT(userid4)                 AS PopulatedUserid4,
    COUNT(*) - COUNT(COALESCE(UserID0, userid4)) AS RowsWithNeitherID
FROM workspace.default.bright_tv_viewership;
