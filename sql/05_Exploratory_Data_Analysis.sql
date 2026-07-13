-- Subscribers by Province
SELECT
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
