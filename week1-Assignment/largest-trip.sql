-- Question 6. Largest tip
-- For the passengers picked up in September 2019 in the zone name Astoria which was the drop off zone that had the largest tip? We want the name of the zone, not the id.

SELECT z.Zone, 
       t.lpep_pickup_datetime::date AS pickup_date, 
       SUM(t.tip_amount) AS total_tip_amount
FROM taxi_trips t
JOIN taxi_zones z ON t.DOLocationID = z.LocationID
WHERE t.PULocationID = 7
GROUP BY z.Zone, pickup_date
ORDER BY total_tip_amount DESC
LIMIT 1;
