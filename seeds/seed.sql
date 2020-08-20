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
VALUES(1012, "ability", "Master mathematician");

INSERT INTO skills(skill_id, skill_type, skill_name)
VALUES(1013, "ability", "Master thief");

INSERT INTO skills(skill_id, skill_type, skill_name)
VALUES(1014, "ability", "Master Driver");

INSERT INTO skills(skill_id, skill_type, skill_name)
VALUES(1015, "ability", "Master Assassin");

INSERT INTO skills(skill_id, skill_type, skill_name)
VALUES(1016, "ability", "Master Detective");

INSERT INTO skills(skill_id, skill_type, skill_name)
VALUES(1017, "ability", "Master Historian");

INSERT INTO skills(skill_id, skill_type, skill_name)
VALUES(1018, "ability", "Master of Deception");

INSERT INTO skills(skill_id, skill_type, skill_name)
VALUES(1019, "ability", "Acrobatics");

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

INSERT INTO skills(skill_id, skill_type, skill_name)
VALUES(2025, "power", "Superhuman sonic scream");

INSERT INTO skills(skill_id, skill_type, skill_name)
VALUES(2026, "power", "Thermokinetic cryokinesis");

INSERT INTO skills(skill_id, skill_type, skill_name)
VALUES(2027, "power", "Cryokinetic breath");

INSERT INTO skills(skill_id, skill_type, skill_name)
VALUES(2028, "power", "Cryokinetic healing");

INSERT INTO skills(skill_id, skill_type, skill_name)
VALUES(2029, "power", "Elasticity");

INSERT INTO skills(skill_id, skill_type, skill_name)
VALUES(2030, "power", "Shapeshifting");

INSERT INTO skills(skill_id, skill_type, skill_name)
VALUES(2031, "power", "Psionic blasts");

INSERT INTO skills(skill_id, skill_type, skill_name)
VALUES(2032, "power", "Psychic illusion");

INSERT INTO skills(skill_id, skill_type, skill_name)
VALUES(2033, "power", "Exosuit: Size alteration");

INSERT INTO skills(skill_id, skill_type, skill_name)
VALUES(2034, "power", "Exosuit: Energy blast");

INSERT INTO skills(skill_id, skill_type, skill_name)
VALUES(2035, "power", "Exosuit: Flight");

INSERT INTO skills(skill_id, skill_type, skill_name)
VALUES(2036, "power", "Organic steel transformation");

INSERT INTO skills(skill_id, skill_type, skill_name)
VALUES(2037, "power", "Stomp-induced shockwaves");

INSERT INTO skills(skill_id, skill_type, skill_name)
VALUES(2038, "power", "Cybernetic interface");

INSERT INTO skills(skill_id, skill_type, skill_name)
VALUES(2039, "power", "Technopathy");

INSERT INTO skills(skill_id, skill_type, skill_name)
VALUES(2040, "power", "Oneiromancy");

INSERT INTO skills(skill_id, skill_type, skill_name)
VALUES(2040, "power", "Precognition");

INSERT INTO skills(skill_id, skill_type, skill_name)
VALUES(2041, "power", "Dream-walking");

INSERT INTO skills(skill_id, skill_type, skill_name)
VALUES(2042, "power", "Energy Blast");

INSERT INTO skills(skill_id, skill_type, skill_name)
VALUES(2043, "power", "Energy Blast");

INSERT INTO skills(skill_id, skill_type, skill_name)
VALUES(2044, "power", "Thunder Clap");

INSERT INTO skills(skill_id, skill_type, skill_name)
VALUES(2045, "power", "Electrical absorption");

INSERT INTO skills(skill_id, skill_type, skill_name)
VALUES(2046, "power", "Electrical constructs");

INSERT INTO skills(skill_id, skill_type, skill_name)
VALUES(2047, "power", "Command inducement");


