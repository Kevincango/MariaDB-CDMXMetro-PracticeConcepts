USE metro_cdmx;

TRUNCATE TABLE `stations_delete`;

--delete from no restablece el conteo del id del auto_increment - alternativa usar TRUNCATE
INSERT INTO `stations_delete` (name) VALUES
("Acatitla"),
("Aculco"),
("Agrícola Oriental");