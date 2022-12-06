-- 1. Írassa ki a J1 hajójárat menetrendjét! Jelenjenek meg az indulási és érkezési állomások az időpontokkal együtt! 
SELECT honnan, hova, indul, erkezik
FROM hajo_menetrend
WHERE jarat = 'J1';

-- 2. Listázza ki, hogy Balatonfüredről milyen állomások felé indulnak hajók 11 óra 30 perc és 12 óra 30 perc között (beleértve a megadott időpontokat is)!
SELECT hova 
FROM hajo_menetrend
WHERE honnan = 'Balatonfüred'
AND indul BETWEEN '11:30:00' AND '12:30:00';


-- 3. Adja meg, hogy a legkésőbben érkező hajó hánykor ér Balatonföldvárra?
SELECT erkezik 
FROM hajo_menetrend
WHERE hova 'Balatonföldvár'
ORDER BY erkezik DESC
LIMIT 1;
 -- vagy

----

-- 4. Az E2-es hajójáratnak mi a végállomása és hánykor érkezik oda!
SELECT hova, erkezik
FROM hajo_menetrend
WHERE jarat = 'E2' ;
-- vagy

----

-- 5. Mikor indul a legutolsó hajó?
SELECT indul
FROM hajo_menetrend
ORDER BY indul DESC
LIMIT 1;

-- 6. Honnan indul az A4-es járat?
SELECT honnan 
FROM hajo_menetrend
WHERE jarat = 'A4';

-- 7. Mely járatok érkeznek Siófokra?
SELECT jarat
FROM hajo_menetrend
WHERE hova = 'Siófok';

-- 8. Az M2-es járatnak mi a végállomása?
SELECT hova
FROM hajo_menetrend
WHERE jarat = 'M2';

-- 9. Honnan indul az M6-os járat?
SELECT honnan
FROM hajo_menetrend
WHERE jarat = 'M6';

-- 10. Adja meg a Szigligetről induló járatokat!
SELECT jarat
FROM hajo_menetrend
WHERE honnan = 'Szigliget';

-- 11. Mikor érkezik hajó Badacsonyba?
SELECT erkezik
FROM hajo_menetrend
WHERE hova = 'Badacsony';

-- 12. Mely járatok indulnak 11 óra után?
SELECT jarat
FROM hajo_menetrend 
WHERE indul > '11:00:00';

-- 13. Mely járatok érkeznek 17 óra után?
SELECT jarat
FROM hajo_menetrend
WHERE erkezik > '17:00:00';

-- 14. Honnan indul a legelső hajó?
SELECT honnan
FROM hajo_menetrend
ORDER BY indul ASC
LIMIT 1;

-- 15. Írassa ki azokat a járatokat, amelyek 11 órakor indulnak!
SELECT jarat
FROM hajo_menetrend
WHERE indul = '11:00:00';