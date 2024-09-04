-- 1. UFO Sightings by Country

SELECT
    country_code,
    COUNT(country_code) AS sighting_times
FROM portfolio.ufo_sightings
WHERE country_code IS NOT NULL
GROUP BY country_code
ORDER BY sighting_times DESC;

-- 2. UFO Sightings by Shape

SELECT 
    ufo_shape,
    COUNT(ufo_shape) AS sighting_times_2
FROM portfolio.ufo_sightings
WHERE ufo_shape IS NOT NULL
GROUP BY ufo_shape
ORDER BY sighting_times_2 DESC;

-- 3. Total Duration of UFO Sightings by Shape

SELECT
    ufo_shape,
    SUM(duration_seconds) AS total_duration_seconds,
    SUM(duration_seconds) / 60 AS total_duration_minutes,
    SUM(duration_seconds) / 3600 AS total_duration_hours
FROM portfolio.ufo_sightings
GROUP BY ufo_shape
ORDER BY total_duration_seconds DESC;

-- 4. UFO Sightings Frequency by Abbreviated Month 

SELECT
    DATE_FORMAT(event_datetime, '%b') AS month,
    COUNT(*) AS frequency
FROM portfolio.ufo_sightings
GROUP BY month
ORDER BY frequency DESC;

-- 5. UFO Sightings Frequency by Hour

SELECT
    HOUR(event_datetime) AS hour,
    COUNT(*) AS frequency
FROM portfolio.ufo_sightings
GROUP BY
    HOUR(event_datetime)
ORDER BY
    frequency DESC;

-- 6. UFO Sightings Frequency by Year

SELECT
    YEAR(event_datetime) AS year,
    COUNT(*) AS frequency
FROM portfolio.ufo_sightings
GROUP BY
    YEAR(event_datetime)
ORDER BY
    frequency DESC;

-- 7. Top 5 Countries with Most UFO Sightings (Using CTE)

WITH country_sightings_cte AS (
    SELECT
        country_code,
        COUNT(*) AS sighting_count
    FROM portfolio.ufo_sightings
    WHERE country_code IS NOT NULL
    GROUP BY country_code
)
SELECT
    country_code,
    sighting_count
FROM country_sightings_cte
ORDER BY sighting_count DESC
LIMIT 5;

-- 8. UFO Sightings Duration Analysis by Shape (Using Subquery)

SELECT
    ufo_shape,
    total_duration_seconds,
    total_duration_seconds / 60 AS total_duration_minutes,
    total_duration_seconds / 3600 AS total_duration_hours
FROM (
    SELECT
        ufo_shape,
        SUM(duration_seconds) AS total_duration_seconds
    FROM portfolio.ufo_sightings
    GROUP BY ufo_shape
) AS shape_duration
ORDER BY total_duration_seconds DESC;

-- 9. Most Frequent UFO Sighting Shapes (Using Subquery)

SELECT
    ufo_shape,
    sighting_times
FROM (
    SELECT
        ufo_shape,
        COUNT(ufo_shape) AS sighting_times
    FROM portfolio.ufo_sightings
    WHERE ufo_shape IS NOT NULL
    GROUP BY ufo_shape
) AS shape_sightings
ORDER BY sighting_times DESC
LIMIT 5;

-- 10. Peak Hour for UFO Sightings (Using CTE)

WITH hourly_sightings_cte AS (
    SELECT
        HOUR(event_datetime) AS sighting_hour,
        COUNT(*) AS sighting_count
    FROM portfolio.ufo_sightings
    GROUP BY sighting_hour
)
SELECT
    sighting_hour,
    sighting_count
FROM hourly_sightings_cte
ORDER BY sighting_count DESC
LIMIT 1;
