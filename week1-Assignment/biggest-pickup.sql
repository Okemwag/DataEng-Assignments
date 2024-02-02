-- Three biggest pick up Boroughs
SELECT z.Borough, SUM(t.total_amount) AS total_amount
FROM taxi_trips t
JOIN taxi_zones z ON t.PULocationID = z.LocationID
WHERE t.lpep_pickup_datetime::date = '2019-09-18'
GROUP BY z.Borough
ORDER BY total_amount DESC
LIMIT 3;
