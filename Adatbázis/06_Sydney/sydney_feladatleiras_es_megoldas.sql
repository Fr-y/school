-- 1. Importálja az 1_tablak.sql fájlt!
CREATE TABLE Sydney_pontszerzok (
  az int(3) PRIMARY KEY AUTO_INCREMENT NOT NULL,
  nev varchar(200) NOT NULL,
  sportag varchar(50) NOT NULL,
  versenyszam varchar(50) NOT NULL,
  egyeni BOOLEAN,
  helyezes int(3) NOT NULL
);
-- 2. Importálja 2_forras.sql fájlt!
INSERT INTO Sydney_pontszerzok(az, nev, sportag, versenyszam, egyeni, helyezes) VALUES
('1','Kovács Zoltán','súlyemelés','94 kg','1','6'),
('2','Kőbán Rita','kajak-kenu','Kajak-1, 500 m','1','6'),
('3','Női tőrcsapat','vívás','női tőrcsapat','0','6'),
('4','Supola Zoltán','torna','','1','6'),
('5','Gerebics Roland','sportlövészet','dupla trap','1','5'),
('6','Férfi vegyes váltó','úszás','4*100 m','0','5'),
('7','Férfi kardcsapat','vívás','férfi kardcsapat','0','5'),
('8','Kovács Ágnes','úszás','100 m mell','1','5'),
('9','Likerecz Gyöngyi','súlyemelés','75 kg','1','5'),
('10','Novák Ferenc, Pulai Imre','kajak-kenu','Kenu-2, 1000','0','5'),
('11','Pető Tibor, Haller Ákos','evezés','kétpár','0','5'),
('12','Salim József','tékvandó','58 kg','1','5'),
('13','Szabolcsi Szilvia','pályakerékpár','repülőverseny','1','5'),
('14','Bátrofi Csilla, Tóth Krisztina','asztalitenisz','páros','0','4'),
('15','Czene Attila','úszás','200 m vegyes','1','4'),
('16','Ferjancsik Domonkos','vívás','kard','1','4'),
('17','Női párbajtőrcsapat','vívás','női párbajtőrcsapat','0','4'),
('18','Vereckei Ákos','kajak-kenu','Kajak-1, 500 m','1','4'),
('19','Bártfai Krisztián, Veréb Krisztián','kajak-kenu','Kajak-2, 1000 m','0','3'),
('20','Erdei Zsolt','ökölvívás','75 kg','1','3'),
('21','Igaly Diána','sportlövészet','skeet','1','3'),
('22','Balogh Gábor','öttusa','','1','2'),
('23','Bárdosi Sándor','kötöttfogású birkozás','85 kg','1','2'),
('24','Kovács Katalin, Szabó Szilvia','kajak-kenu','Kajak-2','0','2'),
('25','Kovács Katalin, Szabó Szilvia, Viski Erzsébet, Kőbán Rita','kajak-kenu','Kajak-4','0','2'),
('26','Márkus Erzsébet','súlyemelés','69 kg','1','2'),
('27','Női kézilabdacsapat','kézilabada','női kézilabdacsapat','0','2'),
('28','Csollány Szilveszter','torna','gyűrű','1','1'),
('29','Férfi vízilabdacsapat','vízilabda','férfi vízilabdacsapat','0','1'),
('30','Kammerer Zoltán, Storcz Botond','kajak-kenu','Kajak-2, 500 m','0','1'),
('31','Kammerer Zoltán, Storcz Botond, Vereckei Ákos, Horváth Gábor','kajak-kenu','Kajak-4, 1000 m','0','1'),
('32','Kolonics György','kajak-kenu','Kenu-1, 500 m','1','1'),
('33','Kovács Ágnes','úszás','200 m mell','1','1'),
('34','Nagy Tímea','vívás','párbajtőr','1','1'),
('35','Novák Ferenc, Pulai Imre','kajak-kenu','Kenu-2','0','1');


-- 3. Listázza ki a versenyzők nevét, sportágát, helyezését a helyezés, másodsorban a név alapján növekvően!
SELECT nev, sportag, helyezes
FROM Sydney_pontszerzok
ORDER BY helyezes ASC, nev ASC;


-- 4. Tóth Krisztina hányadik helyezést ért el, és milyen sportágban, versenyszámban?
SELECT helyezes, sportag
FROM Sydney_pontszerzok
WHERE nev = 'Tóth Krisztina';

-- 5. Hány pontszerző helyezést ért el Kammerer Zoltán?
SELECT COUNT(helyezes)
FROM Sydney_pontszerzok
WHERE nev = 'Kammerer Zoltán';

-- 6. A pontszerző helyekből hányat értek el a magyar versenyzők?
SELECT COUNT(helyezes)
FROM Sydney_pontszerzok;

-- 7. Hány egyéni ezüstérmet sikerült szerezni?
SELECT COUNT(egyeni)
FROM Sydney_pontszerzok
WHERE egyeni = 1
AND helyezes = 2;

-- 8. Kik azoka a súlyemelők, akik pontszerző helyen végeztek?
SELECT nev
FROM Sydney_pontszerzok
WHERE sportag = 'súlyemelés';

-- 9.A vívás mely versenyszámaiban szereztek pontot a magyarok?
SELECT versenyszam
FROM Sydney_pontszerzok
WHERE sportag = 'vívás';

-- 10. Kik álltak dobogóra a kajak-kenusok közül?
SELECT nev
FROM Sydney_pontszerzok
WHERE sportag = 'kajak-kenu'
AND helyezes < 4;

-- 11. Kik értek el olyan helyezést, mint Igaly Diána?
SELECT nev
FROM Sydney_pontszerzok
WHERE helyezes = (
    SELECT helyezes
    FROM Sydney_pontszerzok
    WHERE nev = "Igaly Diána"
);

-- 12. Mely csapatok szereztek pontot? 
SELECT nev
FROM Sydney_pontszerzok
WHERE nev LIKE '%,%';

-- 13. Írassa ki az egyéni versenyeken dobogós helyezést elért sportolókat, sportáganként és névsor szerint!
SELECT nev
FROM Sydney_pontszerzok
WHERE egyeni = 1
AND helyezes < 4
ORDER BY sportag ASC, nev ASC;