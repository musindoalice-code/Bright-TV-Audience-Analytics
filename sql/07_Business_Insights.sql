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

-- Peak Viewing Hours

SELECT
Time_of_Day,
COUNT(*) AS Views
FROM FinalDataset
GROUP BY Time_of_Day
ORDER BY Views DESC;

-- Weekend vs Weekday

SELECT
Day_Classification,
COUNT(*)
FROM FinalDataset
GROUP BY Day_Classification;
