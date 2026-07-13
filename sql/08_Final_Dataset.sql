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

WITH user_profiles AS (
SELECT UserID,
CASE
WHEN Province=' ' THEN 'Uncategorized'
WHEN Province='None' THEN 'Uncategorized'
ELSE Province
END AS Region,
age,
CASE
WHEN age = 0 THEN 'Infants'
WHEN age BETWEEN 1 AND 12 THEN 'Kids'
WHEN age BETWEEN 13 AND 19 THEN 'Teenager'
WHEN age BETWEEN 20 AND 35 THEN 'Youth'
WHEN age BETWEEN 36 AND 50 THEN 'Adult'
WHEN age BETWEEN 51 AND 65 THEN 'Elder'
WHEN age >65 THEN 'Pensioner'
END AS age_groups,
CASE
WHEN (email IS NOT NULL )OR (email=' ') OR (email NOT IN ('None'))THEN 1
ELSE 0
END AS email_flag,
CASE
WHEN `Social Media Handle` IS NOT NULL OR `Social Media Handle`=' ' OR `Social Media Handle` NOT IN ('None')THEN 1
ELSE 0
END AS sm_flag,
CASE
WHEN Race='other' THEN 'None'
WHEN Race=' ' THEN 'None'
ELSE Race
END AS Race,
CASE
WHEN gender =' ' THEN 'None'
ELSE gender
END AS Gender
FROM workspace.default.bright_tv_userprofiles
),
viewership AS (
SELECT
COALESCE(UserID0,userid4) AS userid,
DATE_FORMAT(RecordDate2, 'yyyyMM') AS month_id,
CAST(RecordDate2 AS DATE) AS watch_date,
--TIME(RecordDate2) AS watch_time,
DATE_FORMAT(RecordDate2, 'dd') AS day_of_week,
DATE_FORMAT(RecordDate2, 'EEEE') AS day_name,
CASE
WHEN DATE_FORMAT(RecordDate2, 'EEEE') IN ('Saturday', 'Sunday') THEN 'weekend'
ELSE 'weekday'
END AS day_classification,
DATE_FORMAT(RecordDate2, 'MMMM') AS month_name,
CASE
WHEN Channel2 IN ('SawSee','Sawsee') THEN 'SawSee'
WHEN Channel2 IN ('SuperSport Live Events','Live on SuperSport', 'Supersport Live Events', 'DStv Events 1') THEN 'Live Events'
ELSE Channel2
END AS Tv_channel,
DATE_FORMAT(RecordDate2, 'HH:mm:ss') AS watch_time,
CASE
WHEN DATE_FORMAT(RecordDate2, 'HH:mm:ss') BETWEEN '00:00:00' AND '05:59:59' THEN '01. Midnight'
WHEN DATE_FORMAT(RecordDate2, 'HH:mm:ss') BETWEEN '06:00:00' AND '11:59:59' THEN '02. Morning'
WHEN DATE_FORMAT(RecordDate2, 'HH:mm:ss') BETWEEN '12:00:00' AND '16:59:59' THEN '03. Afternoon'
WHEN DATE_FORMAT(RecordDate2, 'HH:mm:ss') BETWEEN '17:00:00' AND '23:59:59' THEN '04. Evening'
END AS time_of_day,
DATE_FORMAT(`Duration 2`, 'HH:mm:ss') AS duration,
CASE
WHEN DATE_FORMAT(`Duration 2`, 'HH:mm:ss') BETWEEN '00:05:00' AND '00:30:00' THEN '01. Low Usage: <30 min'
WHEN DATE_FORMAT(`Duration 2`, 'HH:mm:ss') BETWEEN '00:30:01' AND '00:59:59' THEN '02. Med Usage: <60 min'
WHEN DATE_FORMAT(`Duration 2`, 'HH:mm:ss') > '00:59:59' THEN '03. High Usage: >60 min'
ELSE '04. No Usage'
END AS screen_time_bucket,
HOUR(RecordDate2) AS hour_of_day
FROM workspace.default.bright_tv_viewership
)
SELECT Coalesce(A.userid,B.userid) AS sub_id,
month_id,
watch_date,
day_of_week,
day_name,
day_classification,
month_name,
Tv_channel,
time_of_day,
hour_of_day,
screen_time_bucket,
--user_flag,
duration,
Region,
age_groups,
email_flag,
sm_flag,
Race,
Gender
FROM viewership AS A
LEFT JOIN user_profiles AS B
ON A.userid=B.userid;
