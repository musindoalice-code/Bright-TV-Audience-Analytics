-- Total Subscribers
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
