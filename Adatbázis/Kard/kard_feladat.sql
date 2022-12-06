CREATE DATABASE kard
DEFAULT CHARACTER SET utf8
COLLATE utf8_hungarian_ci;


-- 1. Importálja a tabla.sql fájl tartalmát az adatbázisába!
CREATE TABLE kard_egyeni(    
    azonosito int(3) PRIMARY KEY AUTO_INCREMENT NOT NULL,
    ev int(4),
    helyszin VARCHAR(50),
    helyezes int(2),
    nev VARCHAR(50),
    orszag VARCHAR(4)
    );
-- 2. Importálja az egyeni.sql fájl tartalmát az előző pontban létrehozott táblába!
INSERT INTO kard_egyeni (azonosito, ev, helyszin, helyezes, nev, orszag) VALUES
('1','1896','Athén','1','Georgiadisz, Joannisz','GÖR'),
('2','1896','Athén','2','Karakalosz, Telemahosz','GÖR'),
('3','1896','Athén','3','Nielsen, Holger','DÁN'),
('4','1900','Párizs','1','De la Falaisen, Georges','FRA'),
('5','1900','Párizs','2','Thiébaut, Léon','FRA'),
('6','1900','Párizs','3','Flesch, Fritz','AUT'),
('7','1904','St. Louis','1','Diaz, Manuel','KUB'),
('8','1904','St. Louis','2','Grebe, William','EÁ'),
('9','1904','St. Louis','3','Van Zo Post, Albertson','KUB'),
('10','1908','London','1','Fuchs Jenő','MA'),
('11','1908','London','2','Zulavszky Béla','MA'),
('12','1908','London','3','Van Lobsdorf, Vilém','BOH'),
('13','1912','Stockholm','1','Fuchs Jenő','MA'),
('14','1912','Stockholm','2','Békéssy Béla','MA'),
('15','1912','Stockholm','3','Mészáros Ervin','MA'),
('16','1920','Brüsszel','1','Nadi, Nedo','OL'),
('17','1920','Brüsszel','2','Nadi, Aldo','OL'),
('18','1920','Brüsszel','3','De Jong, Adrianus','Hol'),
('19','1924','Párizs','1','Posta Sándor','MA'),
('20','1924','Párizs','2','Ducret, Roger','Fra'),
('21','1924','Párizs','3','Garai János','MA'),
('22','1928','Amszterdam','1','Terstyánszky Ödön','MA'),
('23','1928','Amszterdam','2','Petschauer Attila','MA'),
('24','1928','Amszterdam','3','Bini, Bino','OL'),
('25','1932','Los Angeles','1','Jekelfalussy Piller György','MA'),
('26','1932','Los Angeles','2','Gaudini, Giulio','OL'),
('27','1932','Los Angeles','3','Kabos Endre','MA'),
('28','1936','Berlin','1','Kabos Endre','MA'),
('29','1936','Berlin','2','Marzi, Gustavo','OL'),
('30','1936','Berlin','3','Gerevich Aladár','Ma'),
('31','1948','London','1','Gerevich Aladár','Ma'),
('32','1948','London','2','Pinton, Vincenzo','OL'),
('33','1948','London','3','Kovács Pál','MA'),
('34','1952','Helsinki','1','Kovács Pál','MA'),
('35','1952','Helsinki','2','Gerevich Aladár','MA'),
('36','1952','Helsinki','3','Berczelly Tibor','MA'),
('37','1956','Melbourne','1','Kárpáti Rudolf','MA'),
('38','1956','Melbourne','2','Pawlowski, Jerzy','LEN'),
('39','1956','Melbourne','3','Kuznyecov, Lev','SZU'),
('40','1960','Róma','1','Kárpáti Rudolf','MA'),
('41','1960','Róma','2','Horváth Zoltán','MA'),
('42','1960','Róma','3','Calarese, Wladimiro','OL'),
('43','1964','Tokió','1','Pézsa Tibor','MA'),
('44','1964','Tokió','2','Arabo, Claude','FRA'),
('45','1964','Tokió','3','Mavlihanov, Umar','SZU'),
('46','1968','Mexikóváros','1','Pawlowski, Jerzy','LEN'),
('47','1968','Mexikóváros','2','Rakita, Mark','SZU'),
('48','1968','Mexikóváros','3','Pézsa Tibor','MA'),
('49','1972','München','1','Szigyak, Viktor','SZU'),
('50','1972','München','2','Marót Péter','MA'),
('51','1972','München','3','Nazlimov, Vlagyimir','SZU'),
('52','1976','Montreál','1','Krovopuszkov, Viktor','SZU'),
('53','1976','Montreál','2','Nazlimov, Vlagyimir','SZU'),
('54','1976','Montreál','3','Szigyak, Viktor','SZU'),
('55','1980','Moszkva','1','Krovopuszkov, Viktor','SZU'),
('56','1980','Moszkva','2','Burcev, Mihail Ivanovics','SZU'),
('57','1980','Moszkva','3','Gedővári Imre','MA'),
('58','1984','Los Angeles','1','Lamour, Jean-Francois','FRA'),
('59','1984','Los Angeles','2','Marin, Marco','OL'),
('60','1984','Los Angeles','3','Westbrook, Peter','EÁ'),
('61','1988','Szöul','1','Lamour, Jean-Francois','FRA'),
('62','1988','Szöul','2','Olech, Janusz','LEN'),
('63','1988','Szöul','3','Scalzo, Giovanni','OL'),
('64','1992','Barcelona','1','Szabó Bence','MA'),
('65','1992','Barcelona','2','Marin, Marco','OL'),
('66','1992','Barcelona','3','Lamour, Jean-Francois','FRA'),
('67','1996','Atlanta','1','Pozdnyakov, Sztanyiszlav','ORO'),
('68','1996','Atlanta','2','Sarikov, Szergej','ORO'),
('69','1996','Atlanta','3','Touya, Damien','FRA'),
('70','2000','Sydney','1','Covaliu, Mihai','ROM'),
('71','2000','Sydney','2','Gourdain, Mathieu','FRA'),
('72','2000','Sydney','3','Kothny, Wiradech','NÉM');

-- 3. Adja meg az aranyérmesek nevét, olimpia idejét, helyszínét, időpont alapján növekvő sorrendben
SELECT nev, ev, helyszin FROM `kard_egyeni` ORDER BY ev ASC;

-- 4. Adja meg a müncheni olimpia érmeseinek nevét, helyezését!
SELECT nev, helyezes FROM `kard_egyeni` WHERE helyszin = 'München';

-- 5. Kárpáti Rudolf melyik olimpián és milyen helyezést ért el?
SELECT `helyszin`, `helyezes` FROM `kard_egyeni` WHERE nev = "Kárpáti Rudolf";

-- 5/a Kik voltak a Stockholmi olimpia érmesei?
SELECT nev FROM `kard_egyeni` WHERE helyszin = "Stockholm";

-- 6. Hány dobogós helyezést értek el a magyarok?
SELECT COUNT(helyezes) FROM `kard_egyeni` WHERE orszag = "MA";

-- 6/a Fuchs Jenő hány olimpiai érmet szerzett?
SELECT COUNT(helyezes) FROM `kard_egyeni` WHERE nev = "Fuchs Jenő";

-- 7. Melyik olimpián (év, város) szereztek az olaszok először érmet?
SELECT `ev`, `helyszin` FROM `kard_egyeni`
WHERE orszag = "OL" ORDER BY ev ASC LIMIT 1;

-- 8. Kik a magyar dobogósok? Mindenki csak egyszer szerepeljen a helyezések számával.
SELECT nev, helyezes FROM `kard_egyeni`
WHERE orszag = "MA"
GROUP BY nev;

-- 9. Adja meg az 1900 és 1950 közötti nem magyar érmesek nevét, országát, időpontját, helyezését!
SELECT nev, orszag, ev, helyezes FROM `kard_egyeni`
WHERE orszag != "MA" AND ev BETWEEN 1900 AND 1950;

-- 10. Ki nyert többször aranyérmet?
SELECT nev, COUNT(helyezes) FROM `kard_egyeni` 
WHERE helyezes = 1 
GROUP BY nev
HAVING COUNT(helyezes) > 1;

-- 11. Melyik ország hány aranyérmet szerzett?
SELECT orszag, COUNT(helyezes) FROM `kard_egyeni`
WHERE helyezes = 1 GROUP BY orszag;

-- 12. Melyik városban rendeztek többször olimpiát?
SELECT orszag, COUNT(helyezes) FROM `kard_egyeni`
WHERE helyezes = 1 GROUP BY orszag;

-- 13. 1950 előtt ki nyert azonos érmet Kovács Pállal?
SELECT nev FROM `kard_egyeni`
WHERE ev < 1950
AND helyezes = (SELECT helyezes FROM kard_egyeni
                WHERE nev = "Kovács Pál"
                AND ev < 1950);





	