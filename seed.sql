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


-- powers/ablities

DROP TABLE IF EXISTS skills;
CREATE TABLE skills(  
  skill_id int NOT NULL,
  skill_type VARCHAR(50) NOT NULL,
  skill_name VARCHAR(100) NOT NULL
);

INSERT INTO skills(skill_id, skill_type, skill_name)
VALUES(1001,"ability", "Master Marksman");

INSERT INTO skills(skill_id, skill_type, skill_name)
VALUES(1002,"ability", "Master Archer");

INSERT INTO skills(skill_id, skill_type, skill_name)
VALUES(1003, "ability", "Master Swordsman");

INSERT INTO skills(skill_id, skill_type, skill_name)
VALUES(1004, "ability", "Peak of human physical condition");

INSERT INTO skills(skill_id, skill_type, skill_name)
VALUES(1005, "ability", "Stealth Infiltration");

INSERT INTO skills(skill_id, skill_type, skill_name)
VALUES(1006, "ability", "Master hand-to-hand combatant");

INSERT INTO skills(skill_id, skill_type, skill_name)
VALUES(1007, "ability", "High-level intellect");

INSERT INTO skills(skill_id, skill_type, skill_name)
VALUES(1008, "ability", "Crime Scene Investagator");

INSERT INTO skills(skill_id, skill_type, skill_name)
VALUES(1009, "ability", "Expert medic");

INSERT INTO skills(skill_id, skill_type, skill_name)
VALUES(1010, "ability", "Master computer hacker");

INSERT INTO skills(skill_id, skill_type, skill_name)
VALUES(1011, "ability", "Master Engineer");

INSERT INTO skills(skill_id, skill_type, skill_name)
VALUES(1012, "ability", "Master mathematicia");

INSERT INTO skills(skill_id, skill_type, skill_name)
VALUES(1013, "ability", "Master thief");

INSERT INTO skills(skill_id, skill_type, skill_name)
VALUES(1014, "ability", "Master Driver");

INSERT INTO skills(skill_id, skill_type, skill_name)
VALUES(1015, "ability", "Master Assassin");

INSERT INTO skills(skill_id, skill_type, skill_name)
VALUES(2001, "power", "Super Speed");

INSERT INTO skills(skill_id, skill_type, skill_name)
VALUES(2002, "power", "Accelerated healing factor");

INSERT INTO skills(skill_id, skill_type, skill_name)
VALUES(2003, "power", "Invisibility");

INSERT INTO skills(skill_id, skill_type, skill_name)
VALUES(2004, "power", "Electrokinesis");

INSERT INTO skills(skill_id, skill_type, skill_name)
VALUES(2005, "power", "Superhuman strength");

INSERT INTO skills(skill_id, skill_type, skill_name)
VALUES(2006, "power", "Interdimensional travel");

INSERT INTO skills(skill_id, skill_type, skill_name)
VALUES(2007, "power", "Interdimensional travel");

INSERT INTO skills(skill_id, skill_type, skill_name)
VALUES(2008, "power", "Vibrational blasts");

DROP TABLE IF EXISTS hero_skills;
CREATE TABLE hero_skills(  
  hero_id int NOT NULL, 
  skill_id int NOT NULL
);

INSERT INTO hero_skills(hero_id,skill_id)
VALUES(101, 1001);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(101, 1002);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(101, 1003);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(101, 1004);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(101, 1005);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(101, 1006);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(101, 1007);

INSERT INTO hero_skills(hero_id,skill_id)
VALUES(102, 1001);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(102, 1002);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(102, 1003);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(102, 1004);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(102, 1005);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(102, 1006);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(102, 1009);

INSERT INTO hero_skills(hero_id,skill_id)
VALUES(201, 1007);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(201, 1008);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(201, 2001);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(201, 2002);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(201, 2003);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(201, 2004);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(201, 2005);

INSERT INTO hero_skills(hero_id,skill_id)
VALUES(202, 1007);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(202, 1010);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(202, 1011);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(202, 2006);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(202, 2007);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(202, 2008);

INSERT INTO hero_skills(hero_id,skill_id)
VALUES(301, 1001);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(301, 1003);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(301, 1004);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(301, 1005);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(301, 1006);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(301, 1007);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(301, 1007);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(301, 1013);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(301, 1014);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(301, 1015);

INSERT INTO hero_skills(hero_id,skill_id)
VALUES(302, 1013);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(302, 1006);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(302, 1004);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(302, 1014);