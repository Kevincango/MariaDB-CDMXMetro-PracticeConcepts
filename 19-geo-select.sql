USE metro_cdmx;

--calculation in meters;
SELECT ST_Distance_Sphere(
    (
        SELECT `location`
        FROM `locations`
        WHERE `station_id` = (
            SELECT `id`
            FROM `stations`
            WHERE `name` = "Pino Suarez"
        )
    ),
    (
        SELECT `location`
        FROM `locations`
        WHERE `station_id` = (
            SELECT `id`
            FROM `stations`
            WHERE `name` = "Balderas"
        )
    )
) as distanceByNameInMT;

--calculation in KM

SELECT ST_Distance_Sphere(
    (
        SELECT `location`
        FROM `locations`
        WHERE `station_id` = (
            SELECT `id`
            FROM `stations`
            WHERE `name` = "Pino Suarez"
        )
    ),
    (
        SELECT `location`
        FROM `locations`
        WHERE `station_id` = (
            SELECT `id`
            FROM `stations`
            WHERE `name` = "Balderas"
        )
    )
) / 1000 as distanceByNameInKM;