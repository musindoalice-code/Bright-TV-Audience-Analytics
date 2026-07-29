/* =========================================================
Bright TV Audience Analytics
File: 07_KPI_Analysis.sql
Author: Alice Musindo
Date: July 2026
Description: Key performance indicator analysis for Bright TV audience behaviour.
Tools: Databricks SQL
========================================================= */

-- Total subscribers
SELECT COUNT(DISTINCT Sub_ID) AS Total_Subscribers
FROM workspace.default.FinalDataset;

-- Total viewing sessions
SELECT COUNT(*) AS Total_Viewing_Sessions
FROM workspace.default.FinalDataset;

-- Most watched channel
SELECT TV_Channel, COUNT(*) AS Views
FROM workspace.default.FinalDataset
GROUP BY TV_Channel
ORDER BY Views DESC;

-- Peak viewing hours
SELECT Time_Of_Day, COUNT(*) AS Views
FROM workspace.default.FinalDataset
GROUP BY Time_Of_Day
ORDER BY Views DESC;

-- Weekend vs weekday viewing
SELECT Day_Classification, COUNT(*) AS Views
FROM workspace.default.FinalDataset
GROUP BY Day_Classification
ORDER BY Views DESC;
SELECT COUNT(DISTINCT UserID)
FROM workspace.default.bright_tv_userprofiles;

-- Total Viewing Sessions
SELECT COUNT(*)
FROM workspace.default.bright_tv_viewership;

-- Most Watched Channel
SELECT
TV_Channel,
COUNT(*) AS Views
FROM FinalDataset
GROUP BY TV_Channel
ORDER BY Views DESC;
