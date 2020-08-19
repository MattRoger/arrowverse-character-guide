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

DROP TABLE IF EXISTS AKA;
CREATE TABLE AKA(  
  AKA_id int NOT NULL,
  main_id int NOT NULL,
  aka VARCHAR(100) NOT NULL 
);

DROP TABLE IF EXISTS skills;
CREATE TABLE skills(  
  skill_id int NOT NULL,
  skill_type VARCHAR(50) NOT NULL,
  skill_name VARCHAR(100) NOT NULL
);
-- Table binds skills and heros
DROP TABLE IF EXISTS hero_skills;
CREATE TABLE hero_skills(  
  hero_id int NOT NULL, 
  skill_id int NOT NULL
);

-- Arrow
-- Oliver Queen

INSERT INTO Characters (
main_id, first_name, last_name, main_alias, _show, alignment,species, 
strength, attack, dexterity, intelligence, defense, img, bg_color)
VALUES ( 101, "Oliver", "Queen",  "The Green Arrow", "arrow", "good", "human",
7, 9, 8, 9, 7,
'arrow/green_arrow.jpg',
"#124222"
);
INSERT INTO AKA(AKA_id, main_id, aka)
VALUES(1011 ,101, "The Hood");
INSERT INTO AKA(AKA_id, main_id, aka)
VALUES(1012 ,101, "The Vigalanti");
INSERT INTO AKA(AKA_id, main_id, aka)
VALUES(1013 ,101, "The Arrow");
INSERT INTO AKA(AKA_id, main_id, aka)
VALUES(1014 ,101, "The Spectre");

-- Heros Skills
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

-- Diggle

INSERT INTO Characters (
main_id, first_name, last_name, main_alias, _show, alignment,species, 
strength, attack, dexterity, intelligence, defense, img, bg_color)
VALUES ( 102, "John", "Diggle",  "Spartan", "arrow", "good", "human",
7, 8, 6, 7, 7,
'arrow/spartan.jpg',
"#470f27");

-- hero skills
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

-- slade wilson

INSERT INTO Characters (
main_id, first_name, last_name, main_alias, _show, alignment,species, 
strength, attack, dexterity, intelligence, defense, img, bg_color)
VALUES ( 103, "Slade", "Wilson",  "Deathstroke", "arrow", "bad", "Enhanced Human",
7, 9, 8, 9, 7,
'arrow/deathstroke.jpg',
"#190136"
);
-- skills
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(103, 1001);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(103, 1003);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(103, 1004);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(103, 1005);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(103, 1006);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(103, 1007);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(103, 1007);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(103, 2001);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(103, 2002);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(103, 2019);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(103, 2020);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(103, 2021);

-- flash
-- Barry
INSERT INTO Characters (
main_id, first_name, last_name, main_alias, _show, alignment,species, 
strength, attack, dexterity, intelligence, defense, img, bg_color)
VALUES (201, "Barry", "Allen", "The Flash", "flash", "good", "meta-human",
8, 8, 10, 8, 9,
'flash/flash.png',
"#9a010b");
-- Alias
INSERT INTO AKA(AKA_id, main_id, aka)
VALUES(2011,201, "Paragon of Love");

-- Hero skills

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

-- Cisco
INSERT INTO Characters (
main_id, first_name, last_name, main_alias, _show, alignment,species, 
strength, attack, dexterity, intelligence, defense, img, bg_color)
VALUES (202, "Cisco", "Ramon", "Vibe", "flash", "good", "meta-human",
5, 7, 7, 9, 9,
'flash/vibe.jpg',
"#41076a");
-- skills
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(202, 1007);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(202, 1010);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(202, 1011);

INSERT INTO hero_skills(hero_id,skill_id)
VALUES(202, 2007);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(202, 2008);

-- eobard thawne
INSERT INTO Characters (
main_id, first_name, last_name, main_alias, _show, alignment,species, 
strength, attack, dexterity, intelligence, defense, img, bg_color)
VALUES (203, "Eobard", "Thawne", "The Reverse-Flash", "flash", "bad", "meta-human",
8, 8, 10, 8, 9,
'flash/reverse-flash.jpg',
"#fcff1d");

-- Hero skills

INSERT INTO hero_skills(hero_id,skill_id)
VALUES(203, 1005);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(203, 1006);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(203, 1007);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(203, 1008);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(203, 1009);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(203, 1010);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(203, 1011);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(203, 1012);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(203, 2001);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(203, 2002);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(203, 2003);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(203, 2004);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(203, 2005);


-- Legends
-- Sara
INSERT INTO Characters (
main_id, first_name, last_name, main_alias, _show, alignment,species, 
strength, attack, dexterity, intelligence, defense, img, bg_color)
VALUES (301,"Sara", "Lance", "White Canary", "legends", "good", "human",
7, 7, 9, 7, 8,
'legends/sara.jpg',
"#9d3bf8");

INSERT INTO AKA(AKA_id, main_id, aka)
VALUES(3011,301, "Paragon of Destiny");

-- skills
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
VALUES(301, 1013);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(301, 1014);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(301, 1015);


-- Mick
INSERT INTO Characters (
main_id, first_name, last_name, main_alias, _show, alignment,species, 
strength, attack, dexterity, intelligence, defense, img, bg_color)
VALUES (302,"Mick", "Rory", "Heat Wave", "legends", "good", "human",
7, 7, 9, 7, 8,
'legends/mick.jpg',
"#fdbb3c");
-- aka

INSERT INTO AKA(AKA_id, main_id, aka)
VALUES(3021, 302, "Chronos");
INSERT INTO AKA(AKA_id, main_id, aka)
VALUES(3022, 302, "Rebecca Silver");

-- skills
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(302, 1013);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(302, 1006);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(302, 1004);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(302, 1014);

-- neron

INSERT INTO Characters (
main_id, first_name, last_name, main_alias, _show, alignment,species, 
strength, attack, dexterity, intelligence, defense, img, bg_color)
VALUES (303,"Neron", " ", "Demon Lord", "legends", "bad", "demon",
7, 7, 9, 7, 8,
'legends/neron.jpg',
"#00000c");

-- skills

INSERT INTO hero_skills(hero_id,skill_id)
VALUES(303, 2005);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(303, 2009);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(303, 2016);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(303, 2015);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(303, 2022);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(303, 2023);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(303, 2024);

-- supergirl

INSERT INTO Characters (
main_id, first_name, last_name, main_alias, _show, alignment,species, 
strength, attack, dexterity, intelligence, defense, img, bg_color)
VALUES (401,"Kara", "Danvers", "Supergirl", "supergirl", "good", "kryptonian",
9, 10, 8, 7, 8,
"supergirl/supergirl.jpg",
"#b4312e");

-- aka

INSERT INTO AKA(AKA_id, main_id, aka)
VALUES(4011, 401, "Kara Zor-El");
INSERT INTO AKA(AKA_id, main_id, aka)
VALUES(4012,401, "Paragon of Hope");

-- skills
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(401, 1006);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(401, 1007);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(401, 2005);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(401, 2001);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(401, 2002);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(401, 2009);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(401, 2010);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(401, 2011);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(401, 2012);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(401, 2013);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(401, 2014);

-- jon jonz

INSERT INTO Characters (
main_id, first_name, last_name, main_alias, _show, alignment,species, 
strength, attack, dexterity, intelligence, defense, img, bg_color)
VALUES (402,"John", "Jonz", "Martian Manhunter", "supergirl", "good", "martian",
8, 10, 8, 7, 8,
'supergirl/manhunter.jpg',
"#005c04"
);

-- aka

INSERT INTO AKA(AKA_id, main_id, aka)
VALUES(4021, 402, "Hank Henshaw");
INSERT INTO AKA(AKA_id, main_id, aka)
VALUES(4022,402, "Paragon of Honor");

-- skills
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(402, 1001);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(402, 1005);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(402, 1006);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(402, 1007);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(402, 1014);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(402, 2001);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(402, 2002);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(402, 2005);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(402, 2006);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(402, 2009);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(402, 2015);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(402, 2016);

-- lex luthor

INSERT INTO Characters (
main_id, first_name, last_name, main_alias, _show, alignment,species, 
strength, attack, dexterity, intelligence, defense, img, bg_color)
VALUES (403,"Lex", "Luthor", "Lex Luthor", "supergirl", "bad", "human",
8, 10, 8, 7, 8,
'supergirl/lex.jpg',
"#061a40"
);

-- aka
INSERT INTO AKA(AKA_id, main_id, aka)
VALUES(4031, 403, "Paragon of Truth");

INSERT INTO hero_skills(hero_id,skill_id)
VALUES(403, 1006);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(403, 1007);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(403, 1009);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(403, 1010);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(403, 1011);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(403, 1012);

-- black lightening 

INSERT INTO Characters (
main_id, first_name, last_name, main_alias, _show, alignment,species, 
strength, attack, dexterity, intelligence, defense, img, bg_color)
VALUES (501,"Jefferson", "Pierce", "Black Lightning", "blacklight", "good", "meta-human",
7, 9, 7, 7, 8,
'blacklight/blacklight.jpg',
"#104580");

INSERT INTO hero_skills(hero_id,skill_id)
VALUES(501, 1004);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(501, 1005);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(501, 1006);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(501, 1007);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(501, 2001);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(501, 2002);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(501, 2004);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(501, 2005);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(501, 2009);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(501, 2017);

INSERT INTO Characters (
main_id, first_name, last_name, main_alias, _show, alignment,species, 
strength, attack, dexterity, intelligence, defense, img, bg_color)
VALUES (502, "Tobias", "Whale", "The Great White Whale", "blacklight", "bad", "enhanced human",
8, 9, 7, 8, 6,
'blacklight/whale.jpg',
"#645770");

-- skills
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(502, 1001);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(502, 1004);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(502, 1006);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(502, 1007);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(502, 2005);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(502, 2018);

-- peter gambi

INSERT INTO Characters (
main_id, first_name, last_name, main_alias, _show, alignment,species, 
strength, attack, dexterity, intelligence, defense, img, bg_color)
VALUES (503,"Peter", "Gambi", "The Tailor", "blacklight", "good", "human",
7, 9, 7, 7, 8,
'blacklight/gambi.jpg',
"#596869");

-- skills
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(503, 1001);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(503, 1005);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(503, 1006);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(503, 1007);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(503, 1009);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(503, 1010);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(503, 1011);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(503, 1011);

-- skills table insert

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
VALUES(2005, "power", "Super strength");

INSERT INTO skills(skill_id, skill_type, skill_name)
VALUES(2006, "power", "Camouflage");

INSERT INTO skills(skill_id, skill_type, skill_name)
VALUES(2007, "power", "Interdimensional travel");

INSERT INTO skills(skill_id, skill_type, skill_name)
VALUES(2008, "power", "Vibrational blasts");

INSERT INTO skills(skill_id, skill_type, skill_name)
VALUES(2009, "power", "Flight");

INSERT INTO skills(skill_id, skill_type, skill_name)
VALUES(2010, "power", "Heat Vision");

INSERT INTO skills(skill_id, skill_type, skill_name)
VALUES(2011, "power", "X-ray vision:");

INSERT INTO skills(skill_id, skill_type, skill_name)
VALUES(2012, "power", "Invulnerability");

INSERT INTO skills(skill_id, skill_type, skill_name)
VALUES(2013, "power", "Super Hearing");

INSERT INTO skills(skill_id, skill_type, skill_name)
VALUES(2014, "power", "Super Vision");

INSERT INTO skills(skill_id, skill_type, skill_name)
VALUES(2015, "power", "Telepathy");

INSERT INTO skills(skill_id, skill_type, skill_name)
VALUES(2016, "power", "Telekinesis");

INSERT INTO skills(skill_id, skill_type, skill_name)
VALUES(2017, "power", "Electric vision");

INSERT INTO skills(skill_id, skill_type, skill_name)
VALUES(2018, "power", "Ehanced Life Span");

INSERT INTO skills(skill_id, skill_type, skill_name)
VALUES(2019, "power", "Ehanced Durability");

INSERT INTO skills(skill_id, skill_type, skill_name)
VALUES(2020, "power", "Ehanced Reflexes");

INSERT INTO skills(skill_id, skill_type, skill_name)
VALUES(2021, "power", "Ehanced Agility");

INSERT INTO skills(skill_id, skill_type, skill_name)
VALUES(2022, "power", "Demonic Possesion");

INSERT INTO skills(skill_id, skill_type, skill_name)
VALUES(2023, "power", "Rage inducement");

INSERT INTO skills(skill_id, skill_type, skill_name)
VALUES(2024, "power", "Life-Force absorption");

