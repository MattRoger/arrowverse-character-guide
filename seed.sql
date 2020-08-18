CREATE DATABASE IF NOT EXISTS `Arrowverse_db` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `Arrowverse_db`;

DROP TABLE IF EXISTS Characters;
CREATE TABLE Characters (  
  main_id INT NOT NULL,
  first_name varchar(100) NOT NULL,
  last_name varchar(100) NOT NULL,
  main_alias varchar(100),
  _show varchar(100) NOT NULL,
  alignment  varchar(50) NOT NULL,
  species  varchar(50) NOT NULL,

  strength INTEGER(10) NOT NULL,
  attack INTEGER(10) NOT NULL,
  dexterity INTEGER(10) NOT NULL,
  intelligence INTEGER(10) NOT NULL,
  defense INTEGER(10) NOT NULL, 
  
  img varchar(1000) NOT NULL,
  bg_color VARCHAR(50) NOT NULL
);

INSERT INTO Characters (
main_id, first_name, last_name, main_alias, _show, alignment,species, 
strength, attack, dexterity, intelligence, defense, img, bg_color)
VALUES ( 101, "Oliver", "Queen",  "The Green Arrow", "Arrow", "Good", "human",
7, 9, 8, 9, 7,
'arrow/green_arrow.jpg',
"#124222"
);
-- add last name, bg_color
INSERT INTO Characters (
main_id, first_name, last_name, main_alias, _show, alignment,species, 
strength, attack, dexterity, intelligence, defense, img, bg_color)
VALUES ( 102, "John", "Diggle",  "Spartan", "Arrow", "Good", "human",
7, 8, 6, 7, 7,
'arrow/spartan.jpg',
"#470f27");

-- flash

INSERT INTO Characters (
main_id, first_name, last_name, main_alias, _show, alignment,species, 
strength, attack, dexterity, intelligence, defense, img, bg_color)
VALUES (201, "Barry", "Allen", "The Flash", "flash", "Good", "meta-human",
8, 8, 10, 8, 9,
'flash/flash.png',
"#9a010b");

INSERT INTO Characters (
main_id, first_name, last_name, main_alias, _show, alignment,species, 
strength, attack, dexterity, intelligence, defense, img, bg_color)
VALUES (202, "Cisco", "Ramon", "Vibe", "flash", "Good", "meta-human",
5, 7, 7, 9, 9,
'flash/vibe.jpg',
"#41076a");

-- Legends
INSERT INTO Characters (
main_id, first_name, last_name, main_alias, _show, alignment,species, 
strength, attack, dexterity, intelligence, defense, img, bg_color)
VALUES (301,"Sara", "Lance", "White Canary", "legends", "Good", "human",
7, 7, 9, 7, 8,
'legends/sara.jpg',
"#9d3bf8");

INSERT INTO Characters (
main_id, first_name, last_name, main_alias, _show, alignment,species, 
strength, attack, dexterity, intelligence, defense, img, bg_color)
VALUES (302,"Mick", "Rory", "Heat Wave", "legends", "Good", "human",
7, 7, 9, 7, 8,
'legends/mick.jpg',
"#fdbb3c");

-- supergirl

INSERT INTO Characters (
main_id, first_name, last_name, main_alias, _show, alignment,species, 
strength, attack, dexterity, intelligence, defense, img, bg_color)
VALUES (401,"Kara", "Danvers", "Supergirl", "supergirl", "Good", "kryptonian",
9, 10, 8, 7, 8,
"supergirl/supergirl.jpg",
"#b4312e");

INSERT INTO Characters (
main_id, first_name, last_name, main_alias, _show, alignment,species, 
strength, attack, dexterity, intelligence, defense, img, bg_color)
VALUES (402,"John", "Jonz", "Martian Manhunter", "supergirl", "Good", "martian",
8, 10, 8, 7, 8,
'supergirl/manhunter.jpg',
"#005c04"
);

-- black lightening 

INSERT INTO Characters (
main_id, first_name, last_name, main_alias, _show, alignment,species, 
strength, attack, dexterity, intelligence, defense, img, bg_color)
VALUES (501,"Jefferson", "Pierce", "Black Lightning", "blacklight", "Good", "meta-human",
7, 9, 7, 7, 8,
'blacklight/blacklight.jpg',
"#104580");

INSERT INTO Characters (
main_id, first_name, last_name, main_alias, _show, alignment,species, 
strength, attack, dexterity, intelligence, defense, img, bg_color)
VALUES (502, "Tobias", "Whale", "The Great White Whale", "blacklight", "Bad", "enhanced human",
8, 9, 7, 8, 6,
'blacklight/whale.jpg',
"#645770");


DROP TABLE IF EXISTS AKA;
CREATE TABLE AKA(  
  AKA_id int NOT NULL,
  main_id int NOT NULL,
  aka VARCHAR(100) NOT NULL 
);

-- Arrow

INSERT INTO AKA(AKA_id, main_id, aka)
VALUES(1011 ,101, "The Hood");
INSERT INTO AKA(AKA_id, main_id, aka)
VALUES(1012 ,101, "The Vigalanti, The Arrow, The Spectre");
INSERT INTO AKA(AKA_id, main_id, aka)
VALUES(1013 ,101, "The Arrow, The Spectre");
INSERT INTO AKA(AKA_id, main_id, aka)
VALUES(1014 ,101, "The Spectre");


-- Flash

INSERT INTO AKA(AKA_id, main_id, aka)
VALUES(2011,201, "Paragon of Love");

-- Legends

INSERT INTO AKA(AKA_id, main_id, aka)
VALUES(3021, 302, "Chronos, Rebecca Silver");
INSERT INTO AKA(AKA_id, main_id, aka)
VALUES(3021, 302, "Rebecca Silver");

DROP TABLE IF EXISTS AKA_Main;
CREATE TABLE AKA_Main(  
  AKA_id int NOT NULL,
  main_id int NOT NULL
);

INSERT INTO AKA_Main(AKA_id, main_id)
VALUES(1011, 101);
INSERT INTO AKA_Main(AKA_id, main_id)
VALUES(1012, 101);
INSERT INTO AKA_Main(AKA_id, main_id)
VALUES(1011, 101);
INSERT INTO AKA_Main(AKA_id, main_id)
VALUES(1013, 101);
INSERT INTO AKA_Main(AKA_id, main_id)
VALUES(1014, 101);

INSERT INTO AKA_Main(AKA_id, main_id)
VALUES(2011, 201);

INSERT INTO AKA_Main(AKA_id, main_id)
VALUES(3021, 302);
INSERT INTO AKA_Main(AKA_id, main_id)
VALUES(3022, 302);

