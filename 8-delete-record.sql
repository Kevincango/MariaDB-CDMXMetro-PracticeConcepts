USE metro_cdmx;

--Merced stations doesnt exit.
DELETE FROM `stations`
WHERE id = 87;
