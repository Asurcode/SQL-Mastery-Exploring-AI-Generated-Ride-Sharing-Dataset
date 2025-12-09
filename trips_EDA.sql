-- a. Total number of trip requests, completed trips, and cancellations (by type)
		-- it seem that driver are cancelling trip more than user does
SELECT 
	status,
	count(status) as count
FROM practice_db.trips
group by status;

-- b. Top 3 pickup zones with the highest cancellation rate.

SELECT 
    pickup_zone,
    COUNT(*) AS total_trips,
    SUM(CASE
        WHEN status != 'completed' THEN 1
        ELSE 0
    END) AS cancelled_trips,
    ROUND((SUM(CASE
                WHEN status != 'completed' THEN 1
                ELSE 0
            END) * 100.0 / COUNT(*)),
            2) AS cancellation_rate
FROM
    practice_db.trips
GROUP BY pickup_zone
ORDER BY cancellation_rate DESC
LIMIT 3;

-- Average fare

SELECT 
    ROUND(AVG(fare), 2) AS avg_fare
FROM
    practice_db.trips
WHERE
    status = 'completed';

-- d. Driver utilization: total completed trips per active hour, per zone.
	-- total trip per zone
SELECT 
    pickup_zone, COUNT(status) AS completed_trips
FROM
    practice_db.trips
WHERE
    status = 'completed'
GROUP BY pickup_zone
;
	-- total complete trip per active hour
SELECT 
    active_hours, SUM(completed_trips)
FROM
    practice_db.drivers
GROUP BY active_hours
ORDER BY active_hours ASC;








