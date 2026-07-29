/* =========================================================
Bright TV Audience Analytics
File: 04_Feature_Engineering.sql
Author: Alice Musindo
Date: July 2026
Description: Create time-based and behavioural features from raw viewership data.
Tools: Databricks SQL
========================================================= */

CREATE OR REPLACE TEMP VIEW feature_viewership AS
SELECT
    COALESCE(UserID0, userid4) AS UserID,
    DATE_FORMAT(RecordDate2, 'yyyyMM') AS Month_ID,
    CAST(RecordDate2 AS DATE) AS Watch_Date,
    DATE_FORMAT(RecordDate2, 'dd') AS Day_Of_Week,
    DATE_FORMAT(RecordDate2, 'EEEE') AS Day_Name,
    CASE
        WHEN DATE_FORMAT(RecordDate2, 'EEEE') IN ('Saturday', 'Sunday') THEN 'weekend'
        ELSE 'weekday'
    END AS Day_Classification,
    DATE_FORMAT(RecordDate2, 'MMMM') AS Month_Name,
    CASE
        WHEN Channel2 IN ('SawSee', 'Sawsee') THEN 'SawSee'
        WHEN Channel2 IN ('SuperSport Live Events', 'Live on SuperSport', 'Supersport Live Events', 'DStv Events 1') THEN 'Live Events'
        ELSE Channel2
    END AS TV_Channel,
    DATE_FORMAT(RecordDate2, 'HH:mm:ss') AS Watch_Time,
    CASE
        WHEN DATE_FORMAT(RecordDate2, 'HH:mm:ss') BETWEEN '00:00:00' AND '05:59:59' THEN '01. Midnight'
        WHEN DATE_FORMAT(RecordDate2, 'HH:mm:ss') BETWEEN '06:00:00' AND '11:59:59' THEN '02. Morning'
        WHEN DATE_FORMAT(RecordDate2, 'HH:mm:ss') BETWEEN '12:00:00' AND '16:59:59' THEN '03. Afternoon'
        WHEN DATE_FORMAT(RecordDate2, 'HH:mm:ss') BETWEEN '17:00:00' AND '23:59:59' THEN '04. Evening'
        ELSE 'Unknown'
    END AS Time_Of_Day,
    DATE_FORMAT(Duration2, 'HH:mm:ss') AS Duration,
    CASE
        WHEN DATE_FORMAT(Duration2, 'HH:mm:ss') = '00:00:00' THEN '04. No Usage'
        WHEN DATE_FORMAT(Duration2, 'HH:mm:ss') > '00:00:00' AND DATE_FORMAT(Duration2, 'HH:mm:ss') <= '00:30:00' THEN '01. Low Usage: <=30 min'
        WHEN DATE_FORMAT(Duration2, 'HH:mm:ss') > '00:30:00' AND DATE_FORMAT(Duration2, 'HH:mm:ss') <= '00:59:59' THEN '02. Med Usage: <60 min'
        WHEN DATE_FORMAT(Duration2, 'HH:mm:ss') >= '01:00:00' THEN '03. High Usage: >60 min'
        ELSE '04. No Usage'
    END AS Screen_Time_Bucket,
    HOUR(RecordDate2) AS Hour_Of_Day
FROM workspace.default.bright_tv_viewership;

=========================================================
*/
CASE
WHEN Age=0 THEN 'Infants'
WHEN Age BETWEEN 1 AND 12 THEN 'Kids'
WHEN Age BETWEEN 13 AND 19 THEN 'Teenager'
WHEN Age BETWEEN 20 AND 35 THEN 'Youth'
WHEN Age BETWEEN 36 AND 50 THEN 'Adult'
WHEN Age BETWEEN 51 AND 65 THEN 'Elder'
ELSE 'Pensioner'
END AS Age_Group

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
