/*
=========================================================
Bright TV Audience Analytics
File: 07_KPI_Analysis.sql
Author: Alice Musindo
Date: July 2026
Description:
Calculate the executive KPI set from FinalDataset, created in
05_Final_Dataset.sql.
Tools:
- Databricks SQL
=========================================================
*/

-- Total Subscribers
SELECT COUNT(DISTINCT sub_id) AS TotalSubscribers
FROM workspace.default.FinalDataset;

-- Total Viewing Sessions
SELECT COUNT(*) AS TotalSessions
FROM workspace.default.FinalDataset;

-- Most Watched Channel (by session count)
SELECT
    Tv_channel,
    COUNT(*) AS Views
FROM workspace.default.FinalDataset
GROUP BY Tv_channel
ORDER BY Views DESC;

-- Peak Viewing Hours
SELECT
    hour_of_day,
    COUNT(*) AS Sessions
FROM workspace.default.FinalDataset
GROUP BY hour_of_day
ORDER BY Sessions DESC;

-- Peak time-of-day daypart
SELECT
    time_of_day,
    COUNT(*) AS Sessions
FROM workspace.default.FinalDataset
GROUP BY time_of_day
ORDER BY Sessions DESC;

-- Weekend vs Weekday
SELECT
    day_classification,
    COUNT(*)                                                AS Sessions,
    ROUND(100.0 * COUNT(*) / SUM(COUNT(*)) OVER (), 1)      AS PctOfSessions
FROM workspace.default.FinalDataset
GROUP BY day_classification;

-- Screen time / heavy usage distribution
SELECT
    screen_time_bucket,
    COUNT(*) AS Sessions
FROM workspace.default.FinalDataset
GROUP BY screen_time_bucket
ORDER BY screen_time_bucket;
