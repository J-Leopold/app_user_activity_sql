# App User Activity SQL Project

# Overview

This project analyzes user activity data in a hypothetical mobile app using SQLite. 
The goal of this project is to simulate real-world product analytics tasks such as measuring engagement, identifying inactive users, and analyzing user conversion behavior. 

This project includes the database schema, sample data, and analytical SQL queries.  

--

## Database Structure 

This mock database consists of two tables:

### 1. Users
Stores user profile and information.
-user_id (primary key)
-name
-signup_date
-device_type

## 2. Events
Stores user activity records.
-event_id (Primary Key)
-user_id (Foreign Key)
-event_type (login, purchase, logout)
-event_time

## Analytical Questions Solved
This project answers the following questions:
- Which users signed up after a specific date?
- How many users are on each device type?
- What is the earliest signup date?
- Which users have never performed any activity?
- How many events has each user performed?
- Which users are highly engaged?
- What are the Daily Active Users (DAU)?
- Which users logged in but never completed a purchase?

## Key SQL Concepts 
- SELECT
- WHERE
- GROUP BY 
- HAVING 
- INNER VS LEFT JOIN
- COUNT AND COUNT (DISTINCT)
- Conditional aggregation using CASE 
- NULL


## Project Outcomes
Through the project, the following insights were identified:
- IOS is the most common device platform among users.
- Some users signed up but never performed any activity.
- Engagement levels vary between users.
- Certain users logged in but never converted to purchase. This identifies a potential drop-off in the conversion funnel.
