SELECT * FROM users;

SELECT * FROM events;

--Users that signup on or after 2024-01-05.
--Purpose: To identify recent acquired users based on signup date.
Select *
From users
Where signup_date >= '2024-01-05';

--Number of users by device type.
--Purpose: To analyze distribution of users across platforms.
SELECT device_type, COUNT (*) AS user_count
FROM users
GROUP BY device_type; 

--Earliest Signup date. 
--Purpose: Determines when the first user registered. 
Select MIN (signup_date) AS early_signup
FROM users

--Device type with more than 1 user.
--Purpose: Identifies which platform has siginifcant user concentration.
SELECT device_type, COUNT (*) AS user_count
FROM users
group BY device_type
HAVING COUNT (*) > 1;

--List all user events (INNER JOIN). 
--Purpose: Users activity detatils for users who performed events. 
SELECT name, event_type, event_time
FROM users
INNER JOIN events 
ON users.user_id = events.user_id; 

--All users with their events (LEFT JOIN).
--Purpose: Shows all users, including those without activities.
SELECT name, event_type
FROM users 
LEFT JOIN events 
on users.user_id = events.user_id 

--User with no activity.
--Purpose: Identifies users who never performed any activity.
SELECT name, event_type
FROM users
left JOIN events 
on  users.user_id = events.user_id
AND events.event_type = 'login'
WHERE events.user_id IS NULL

--Total number of events per user.
--Purpose: Counts how many events each user has performed.
SELECT name, COUNT (event_type) AS num_events
from users
Left join events
on users.user_id = events.user_id
GROUP BY name;

--Users with more than one event. 
--Purpose: Identifies highly engaged users.
SELECT name, COUNT (event_type) AS num_events
FROM users
left join events 
on users.user_id = events.user_id 
GROUP BY name
HAVING COUNT (event_type) > 1

--Daily Active Users (DAU).
--Purpose: Count distinct users who performed atleast one event per day. 
Select DATE (event_time) AS event_date, 
       COUNT (DISTINCT user_id) As active_users
FROM events 
GROUP BY DATE (event_time) 

--Users who logged in but never purchased.
--Purpose: Identifies users who engaged but did not convert.
SELECT u.name
FROM users u
LEFT JOIN events e 
ON u.user_id = e.user_id
GROUP BY u.name
HAVING SUM (CASE WHEN e.event_type = 'login' THen 1 else 0 end) >= 1 AND
SUM (CASE WHEN e.event_type = 'purchase' then 1 else 0 end) = 0
 


