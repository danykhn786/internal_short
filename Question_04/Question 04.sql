create table test.user_activity(
user_id int primary key,
activity_date datetime,
activity_type varchar(20));

select * from test.user_activity;

-- To find the daily engagement rate, which is the percentage of users who performed at least 
-- one activity on a given day out of the total number of distinct users on that day. Round the result to two decimal places.
SELECT activity_date,
  ROUND(
    100.0 * COUNT(DISTINCT CASE WHEN activity_type IS NOT NULL THEN user_id END) /
    COUNT(DISTINCT user_id), 2
  ) AS engagement_rate
FROM
  user_activity
GROUP BY
  activity_date
ORDER BY
  activity_date;
