/* =========================================================
Bright TV Audience Analytics
File: 01_Data_Exploration.sql
Author: Alice Musindo
Date: July 2026
Description: Initial exploration of raw Bright TV datasets.
Tools: Databricks SQL
========================================================= */

-- Explore user profile dataset
SELECT *
FROM workspace.default.bright_tv_userprofiles
LIMIT 10;

-- Row count
SELECT COUNT(*) AS total_user_profiles
FROM workspace.default.bright_tv_userprofiles;

-- Explore viewership dataset
SELECT *
FROM workspace.default.bright_tv_viewership
LIMIT 10;

-- Row count
SELECT COUNT(*) AS total_viewership_rows
FROM workspace.default.bright_tv_viewership;

-- Distinct subscribers
SELECT COUNT(DISTINCT UserID) AS total_distinct_users
FROM workspace.default.bright_tv_userprofiles;
==================================================
Bright TV Audience Analytics
Data Exploration
Author: Alice Musindo
==================================================
Purpose:
Explore the structure and contents of the datasetsbefore performing data cleaning and analysis.
==================================================
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
COUNT(*) AS TotalRows,
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
