-- DATA PREPROCESSING --

-- CREATE TABLE COMBINE_TRIP --

CREATE TABLE combine_trips (
ride_id nvarchar(50),
rideable_type nvarchar(50),
started_at datetime2,
ended_at datetime2,
start_station_name nvarchar(225),
end_station_name nvarchar(225),
member_casual nvarchar(50)
)

-- Insert data to table --

INSERT INTO [dbo].[combine_trips] ([ride_id],[rideable_type],[started_at],[ended_at],[start_station_name],[end_station_name],[member_casual])
(SELECT [ride_id],[rideable_type],[started_at],[ended_at],[start_station_name],[end_station_name],[member_casual] 
FROM [dbo].[202401-divvy-tripdata])
UNION ALL
(SELECT [ride_id],[rideable_type],[started_at],[ended_at],[start_station_name],[end_station_name],[member_casual] 
FROM [dbo].[202402-divvy-tripdata])
UNION ALL
(SELECT [ride_id],[rideable_type],[started_at],[ended_at],[start_station_name],[end_station_name],[member_casual] 
FROM [dbo].[202403-divvy-tripdata])
UNION ALL
(SELECT [ride_id],[rideable_type],[started_at],[ended_at],[start_station_name],[end_station_name],[member_casual] 
FROM [dbo].[202404-divvy-tripdata])
UNION ALL
(SELECT [ride_id],[rideable_type],[started_at],[ended_at],[start_station_name],[end_station_name],[member_casual] 
FROM [dbo].[202405-divvy-tripdata])
UNION ALL
(SELECT [ride_id],[rideable_type],[started_at],[ended_at],[start_station_name],[end_station_name],[member_casual] 
FROM [dbo].[202406-divvy-tripdata])

-- ADD NEW COLUMN AND UPDATE COLUMN VALUES --

ALTER TABLE combine_trips
ADD duration INT, month_of_year nvarchar(50), day_of_week nvarchar(50), hour_of_day INT;

UPDATE combine_trips
SET 
    duration = DATEDIFF(MINUTE,started_at,ended_at), 
    hour_of_day = DATEPART(HOUR,started_at),
    day_of_week = DATENAME(WEEKDAY, started_at),
    month_of_year = DATENAME(MONTH,started_at);

-- CHECKING DUPLICATE --
SELECT 
    COUNT(DISTINCT ride_id), 
    COUNT(ride_id),
    COUNT(ride_id) - COUNT(DISTINCT ride_id) AS DIFF
FROM combine_trips;

WITH cte
AS
(
    SELECT *, 
        ROW_NUMBER() OVER(PARTITION BY ride_id ORDER BY started_at) as rn
    FROM combine_trips
)
SELECT COUNT(*)
FROM cte
WHERE rn > 1;

-- REMOVE DUPLICATE --

DELETE T
FROM
(
   SELECT *, 
   ROW_NUMBER() OVER(PARTITION BY ride_id ORDER BY started_at) as rn
   FROM combine_trips 
) AS T
WHERE rn > 1

-- DELETE ERROR DATA --

DELETE error
FROM
(
    SELECT *
FROM combine_trips
WHERE duration <= 0 
) as error

-- DATA EXPLORATION ANALYSIS --

-- 1. Current differrent of each member? Quantity and Percentage?

SELECT 
    member_casual, 
    COUNT(member_casual) as member_count, 
    ROUND(CAST(COUNT(member_casual) as float)/ (SELECT COUNT(*) FROM combine_trips) * 100,2) as member_percentage
FROM combine_trips
GROUP BY member_casual

-- 2. Different about using type of bike by each member? Quantity and Percentage?

SELECT 
    member_casual, 
    rideable_type, 
    COUNT(member_casual) AS member_count,
    ROUND(CAST(COUNT(rideable_type) as float) / SUM(COUNT(rideable_type)) OVER(PARTITION BY rideable_type) *100,2) percentage_member_by_each_type
FROM combine_trips
GROUP BY member_casual, rideable_type

-- 3. How many member of each type using bike service each month? Calculate Percentage for each type of member each month?

SELECT 
    member_casual, 
    month_of_year, 
    COUNT(member_casual) AS member_count,
    ROUND(CAST(COUNT(month_of_year) as float) / SUM(COUNT(month_of_year)) OVER(PARTITION BY month_of_year) *100,2) percentage_member_by_each_month
FROM combine_trips
GROUP BY member_casual, month_of_year

-- 4. How many member of each type using bike service each day of week? Calculate Percentage for each type of member each day of week?

SELECT 
    member_casual,
    day_of_week,
    COUNT(member_casual) AS member_count,
    ROUND(CAST(COUNT(day_of_week) as float) / SUM(COUNT(day_of_week)) OVER(PARTITION BY day_of_week) *100,2) percentage_member_by_day_of_week
FROM combine_trips
GROUP BY member_casual, day_of_week;

-- 5. Overall AVG duration compare with Avg duration on week day by each member

WITH temp1
AS
(
    SELECT 
        member_casual,
        day_of_week,
        AVG(duration) AVG_duration_by_day_of_week
    FROM combine_trips
    GROUP BY member_casual,day_of_week
),
temp2
AS
(
    SELECT 
        member_casual, 
        AVG(duration) AS avg_duration
    FROM combine_trips
    GROUP BY member_casual
)

SELECT 
    t1.member_casual, 
    t2.avg_duration,
    t1.day_of_week,
    t1.AVG_duration_by_day_of_week
FROM temp1 t1
FULL JOIN temp2 t2 
ON t1.member_casual = t2.member_casual
ORDER BY t1.day_of_week

-- 6. Number of Members Using Bike Service Each Hour of the Day? Percentage of Members Using Bike Service for Each Hour? Overall Percentage for the Entire Day?

WITH temp1
AS
(
    SELECT 
        member_casual, 
        hour_of_day,
        COUNT(member_casual) as member_count,
        ROUND(CAST(COUNT(hour_of_day) as float) / SUM(COUNT(day_of_week)) OVER(PARTITION BY hour_of_day) *100,2) percentage_member_by_hour_of_day
    FROM combine_trips
    GROUP BY member_casual, hour_of_day
),
temp2
AS
(
    SELECT 
        hour_of_day, 
        ROUND(CAST(COUNT(hour_of_day) as float)/ (SELECT COUNT(*) FROM combine_trips) * 100,2) as percentage_of_in_hour_using
    FROM combine_trips
    GROUP BY hour_of_day
    -- ORDER BY hour_of_day
)
SELECT 
    t1.hour_of_day, 
    t1.member_casual, 
    t2.percentage_of_in_hour_using,
    t1.member_count,
    t1.percentage_member_by_hour_of_day 
FROM temp1 t1
FULL JOIN temp2 t2 
ON t1.hour_of_day = t2.hour_of_day

-- Most popular start station for each member --

SELECT TOP 10
    member_casual, 
    start_station_name, 
    COUNT(member_casual) AS member_count
FROM combine_trips
WHERE start_station_name IS NOT NULL
GROUP BY member_casual, start_station_name
ORDER BY COUNT(member_casual) DESC

-- Most popular end station for each member --

SELECT TOP 10
    member_casual, 
    end_station_name, 
    COUNT(member_casual) AS member_count
FROM combine_trips
WHERE end_station_name IS NOT NULL
GROUP BY member_casual, end_station_name
ORDER BY COUNT(member_casual) DESC

-- Most popular route for each member --

SELECT TOP 10 
    member_casual,
    start_station_name, 
    end_station_name, 
    COUNT(member_casual) AS member_count
FROM combine_trips
WHERE end_station_name IS NOT NULL AND start_station_name IS NOT NULL
GROUP BY member_casual,start_station_name, end_station_name
ORDER BY COUNT(member_casual) DESC