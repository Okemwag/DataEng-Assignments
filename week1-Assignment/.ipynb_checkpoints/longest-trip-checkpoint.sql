-- Question 4. Longest trip for each day
-- Which was the pick up day with the longest trip distance?

SELECT lpep_pickup_datetime, 
       lpep_dropoff_datetime, 
       trip_distance
FROM taxi_trips
ORDER BY trip_distance DESC
LIMIT 1;
