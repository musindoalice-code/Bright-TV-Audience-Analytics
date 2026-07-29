/* =========================================================
Bright TV Audience Analytics
File: 06_EDA.sql
Author: Alice Musindo
Date: July 2026
Description: Exploratory analysis of the final dataset.
Tools: Databricks SQL
========================================================= */

-- Subscribers by province/region
SELECT Region, COUNT(*) AS Subscribers
FROM workspace.default.FinalDataset
GROUP BY Region
ORDER BY Subscribers DESC;

-- Subscribers by gender
SELECT Gender, COUNT(*) AS Subscribers
FROM workspace.default.FinalDataset
GROUP BY Gender
ORDER BY Subscribers DESC;

-- Subscribers by age group
SELECT Age_Group, COUNT(*) AS Subscribers
FROM workspace.default.FinalDataset
GROUP BY Age_Group
ORDER BY Subscribers DESC;

-- Subscribers by race
SELECT Race, COUNT(*) AS Subscribers
FROM workspace.default.FinalDataset
GROUP BY Race
ORDER BY Subscribers DESC;
Province,
COUNT(*) AS Subscribers
FROM workspace.default.bright_tv_userprofiles
GROUP BY Province
ORDER BY Subscribers DESC;

-- Subscribers by Gender
SELECT
Gender,
COUNT(*)
FROM workspace.default.bright_tv_userprofiles
GROUP BY Gender;

-- Subscribers by Age Group
SELECT
Age_Group,
COUNT(*)
FROM FinalDataset
GROUP BY Age_Group;
