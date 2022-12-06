-- 1. Importálja az 1_tablak.sql fájlt az adatbázisába!
CREATE TABLE uralkodok_uralkodo (
  az int(3) PRIMARY KEY AUTO_INCREMENT NOT NULL,
  nev varchar(50) NOT NULL,
  kezdo int(4) NOT NULL,
  vegso int(4) NOT NULL
);
-- 2. Importálja 2_forras.sql fájlt!
INSERT INTO uralkodok_uralkodo(az, nev,kezdo, vegso) VALUES
('1','Szt. István','1001','1038'),
('2','Péter','1039','1042'),
('3','Sámuel','1042','1044'),
('4','Péter','1044','1046'),
('5','I. Endre','1046','1060'),
('6','I. Béla','1060','1063'),
('7','Salamon','1063','1074'),
('8','I. Géza','1074','1077'),
('9','Szt. László','1077','1095'),
('10','Kálmán','1095','1116'),
('11','II. István','1116','1131'),
('12','II.Béla','1131','1141'),
('13','II. Géza','1141','1162'),
('14','III. István','1162','1172'),
('15','II. László','1162','1163'),
('16','IV. István','1163','1165'),
('17','III. Béla','1172','1196'),
('18','Imre','1196','1204'),
('19','III. László','1204','1205'),
('20','II. Endre','1205','1235'),
('21','IV. Béla','1235','1270'),
('22','V. István','1270','1272'),
('23','IV. László','1272','1290'),
('24','III. Endre','1290','1301'),
('25','Vencel','1301','1304'),
('26','Ottó','1305','1308'),
('27','I. Károly Róbert','1310','1342'),
('28','N. Lajos','1342','1382'),
('29','Mária','1382','1395'),
('30','II. (Kis), Károly','1385','1386'),
('31','Zsigmond','1387','1437'),
('32','Albert','1438','1439'),
('33','I.Ulászló','1440','1444'),
('34','Hunyadi János kormányzó','1446','1453'),
('35','V. László','1452','1457'),
('36','Mátyás','1458','1490'),
('37','II. Ulászló','1490','1516'),
('38','II. Lajos','1516','1526'),
('39','I. Ferdinand','1526','1564'),
('40','Szapolyai János','1526','1540'),
('41','Miksa','1564','1576'),
('42','Rudolf','1576','1608'),
('43','II. Mátyás','1608','1619'),
('44','II. Ferdinánd','1619','1637'),
('45','III. Ferdinánd','1637','1657'),
('46','I. Lipót','1657','1705'),
('47','I. József','1705','1711'),
('48','III. Károly','1711','1740'),
('49','Mária Terézia','1740','1780'),
('50','II. József','1780','1790'),
('51','II. Lipót','1790','1792'),
('52','I. Ferenc','1792','1835'),
('53','V. Ferdinánd','1835','1848'),
('54','I. Ferenc József','1848','1916'),
('55','IV. Károly','1916','1918');


-- Listázza ki a királyokat névsorban!
SELECT nev
FROM uralkodok_uralkodo
ORDER BY ASC;

-- Írassa ki a László nevű királyokat uralkodásuk hosszával együtt! Az Ulászlók ne szerepeljenek a listán!
SELECT nev, kezdo, vegso
FROM uralkodok_uralkodo
WHERE nev LIKE '%László%'
AND NOT LIKE '%Ulászló%';

-- Listázza ki a királyok nevét uralkodásuk hosszának sorrendjében, csökkenően!
SELECT nev
FROM uralkodok_uralkodo
ORDER BY vegso - kezdo DESC;

-- Hány István keresztnevű uralkodónk volt?
SELECT COUNT(nev)
FROM uralkodok_uralkodo
WHERE nev LIKE '%István%';

-- 1347-ben  a királyi udvar Visegrádról átmenetileg Budára költözött. Ki volt ekkor a király?
SELECT nev
FROM uralkodok_uralkodo
WHERE kezdo <= 1347 AND vegso >= 1347;

-- Írassa ki a 10 évnél hosszabb ideig uralkodó királyokat névsorban!
SELECT nev
FROM uralkodok_uralkodo
WHERE vegso - kezdo > 10
ORDER BY nev ASC;

-- Hány király volt Magyarországon 1300 és 1399 között?
SELECT COUNT(nev)
FROM uralkodok_uralkodo
WHERE kezdo <= 1300 AND vegso >= 1399;

-- Mátyás előtt hány király uralkodott?
SELECT COUNT(nev)
FROM uralkodok_uralkodo
WHERE vegso < (
    SELECT kezdo
    FROM uralkodok_uralkodo
    WHERE nev = "Mátyás"
);

-- Ki uralkodott legtovább?
SELECT nev
FROM uralkodok_uralkodo
ORDER BY vegso - kezdo DESC
LIMIT 1;
