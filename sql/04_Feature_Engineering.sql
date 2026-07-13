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
