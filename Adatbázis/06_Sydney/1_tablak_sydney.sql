CREATE TABLE Sydney_pontszerzok (
  az int(3) PRIMARY KEY AUTO_INCREMENT NOT NULL,
  nev varchar(200) NOT NULL,
  sportag varchar(50) NOT NULL,
  versenyszam varchar(50) NOT NULL,
  egyeni BOOLEAN,
  helyezes int(3) NOT NULL
);