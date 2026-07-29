/* =========================================================
Bright TV Audience Analytics
File: 08_Business_Insights.sql
Author: Alice Musindo
Date: July 2026
Description: Final business insights from the Bright TV audience analysis.
Tools: Databricks SQL
========================================================= */

-- Example insight 1: top channels by viewing volume
SELECT
    TV_Channel,
    COUNT(*) AS Views
FROM workspace.default.FinalDataset
GROUP BY TV_Channel
ORDER BY Views DESC;

-- Example insight 2: audience by age group and channel
SELECT
    Age_Group,
    TV_Channel,
    COUNT(*) AS Views
FROM workspace.default.FinalDataset
GROUP BY Age_Group, TV_Channel
ORDER BY Age_Group, Views DESC;

-- Example insight 3: viewing pattern by day classification
SELECT
    Day_Classification,
    Time_Of_Day,
    COUNT(*) AS Views
FROM workspace.default.FinalDataset
GROUP BY Day_Classification, Time_Of_Day
ORDER BY Day_Classification, Views DESC;
