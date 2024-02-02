--QUESTION 3:

-- How many taxi trips were totally made on September 18th 2019?

-- Tip: started and finished on 2019-09-18.

-- Remember that lpep_pickup_datetime and lpep_dropoff_datetime columns are in the format timestamp (date and hour+min+sec) and not in date.

SELECT CAST(lpep_pickup_datetime AS DATE) AS pickup_date,
       CAST(lpep_dropoff_datetime AS DATE) AS dropoff_date,
       COUNT(*) AS trip_count
FROM taxi_trips
WHERE CAST(lpep_pickup_datetime AS DATE) = '2019-09-18' AND
      CAST(lpep_dropoff_datetime AS DATE) = '2019-09-18'
GROUP BY pickup_date, dropoff_date;
