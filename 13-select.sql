USE metro_cdmx;

--select everything;
SELECT * FROM `lines`;

--filter for columns
SELECT id, name, color FROM `lines`;

--mathematic operation

SELECT (2 + 2) as Result;

--average with decimals
SELECT AVG(year) FROM `trains`;

--average with round
SELECT ROUND(AVG(year)) as year_avg FROM `trains`;

--joins tables;

SELECT `lines`.name, `trains`.serial_number
FROM `lines` INNER JOIN `trains` ON `lines`.id = `trains`.line_id;