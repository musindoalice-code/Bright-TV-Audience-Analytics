/*
=========================================================
Bright TV Audience Analytics
File: 08_Business_Insights.sql
Author: Alice Musindo
Date: July 2026
Description:
Answer the business intelligence questions — which audiences to target,
which provinces need marketing investment, and which channels deserve
further investment — using FinalDataset, created in 05_Final_Dataset.sql.
Tools:
- Databricks SQL
=========================================================
*/

-- Which region + age-group combination has the most subscribers, and how
-- does its engagement compare to the company average?
WITH segment_stats AS (
    SELECT
        Region,
        age_groups,
        COUNT(DISTINCT sub_id)                                    AS subscribers,
        COUNT(*)                                                  AS sessions,
        ROUND(COUNT(*) * 1.0 / COUNT(DISTINCT sub_id), 2)         AS sessions_per_subscriber
    FROM workspace.default.FinalDataset
    WHERE Region != 'Uncategorized' AND is_incomplete_profile = 0
    GROUP BY Region, age_groups
),
company_avg AS (
    SELECT AVG(sessions_per_subscriber) AS avg_sessions_per_subscriber
    FROM segment_stats
)
SELECT
    s.*,
    c.avg_sessions_per_subscriber,
    CASE
        WHEN s.sessions_per_subscriber < c.avg_sessions_per_subscriber THEN 'Below Average'
        ELSE 'Above Average'
    END AS engagement_vs_company
FROM segment_stats s
CROSS JOIN company_avg c
ORDER BY s.subscribers DESC;

-- Which provinces have a large subscriber base but a low session count per
-- subscriber (candidates for increased marketing investment)?
SELECT
    Region,
    COUNT(DISTINCT sub_id)                                AS subscribers,
    COUNT(*)                                              AS sessions,
    ROUND(COUNT(*) * 1.0 / COUNT(DISTINCT sub_id), 2)     AS sessions_per_subscriber
FROM workspace.default.FinalDataset
WHERE Region != 'Uncategorized'
GROUP BY Region
ORDER BY sessions_per_subscriber ASC;

-- Which channels deserve further investment, by daypart?
SELECT *
FROM (
    SELECT
        time_of_day,
        Tv_channel,
        COUNT(*) AS sessions,
        RANK() OVER (PARTITION BY time_of_day ORDER BY COUNT(*) DESC) AS channel_rank
    FROM workspace.default.FinalDataset
    GROUP BY time_of_day, Tv_channel
) ranked
WHERE channel_rank <= 3
ORDER BY time_of_day, channel_rank;
