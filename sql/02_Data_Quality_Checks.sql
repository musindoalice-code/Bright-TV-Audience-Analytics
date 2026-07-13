/*
=========================================================
Bright TV Audience Analytics
File: 01_Data_Exploration.sql
Author: Alice Musindo
Date: July 2026

Description:
This script explores the structure and quality of the Bright TV datasets before transformation and analysis.

Tools:
- Databricks SQL
- SQL

=========================================================
*/

-- Duplicate Users
SELECT UserID,
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
WHERE Gender=' ';

-- Missing Race
SELECT COUNT(*)
FROM workspace.default.bright_tv_userprofiles
WHERE Race IS NULL;

-- Missing Province
SELECT COUNT(*)
FROM workspace.default.bright_tv_userprofiles
WHERE Province=' ';
