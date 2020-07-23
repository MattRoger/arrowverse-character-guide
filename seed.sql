CREATE DATABASE IF NOT EXISTS `Arrowverse_db` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `Arrowverse_db`;

DROP TABLE IF EXISTS Characters;
CREATE TABLE Characters (  
  full_name varchar(100) NOT NULL,
  main_alias varchar(100),
  _show varchar(100) NOT NULL,
  alignment  varchar(50) NOT NULL,
  species  varchar(50) NOT NULL,

  strength INTEGER(10) NOT NULL,
  attack INTEGER(10) NOT NULL,
  dexterity INTEGER(10) NOT NULL,
  intelligence INTEGER(10) NOT NULL,
  defense INTEGER(10) NOT NULL, 
   
);

INSERT INTO Characters (
full_name,  main_alias, _show, alignment,species, 
strength, attack, dexterity, intelligence, defense)
VALUES ("Oliver Queen",  "The Green Arrow", "Arrow", "Good", "human",
7, 9, 8, 9, 7);

INSERT INTO Characters (
full_name,  main_alias, _show, alignment, species, 
strength, attack, dexterity, intelligence, defense)
VALUES ("John Diggle",  "Spartan", "Arrow", "Good", "human",
7, 8, 6, 7, 7);

INSERT INTO Characters (
full_name,  main_alias, _show, alignment, species, 
strength, attack, dexterity, intelligence, defense)
VALUES ("Barry Allen", "The Flash", "The Flash", "Good", "meta-human",
8, 8, 10, 8, 9);

INSERT INTO Characters (
full_name,  main_alias, _show, alignment, species, 
strength, attack, dexterity, intelligence, defense)
VALUES ("Cisco Ramon", "Vibe", "The Flash", "Good", "meta-human",
5, 7, 7, 9, 9);

INSERT INTO Characters (
full_name,  main_alias, _show, alignment, species, 
strength, attack, dexterity, intelligence, defense)
VALUES ("Kara Danvers", "Supergirl", "Supergirl", "Good", "kryptonian",
9, 10, 8, 7, 8);

INSERT INTO Characters (
full_name,  main_alias, _show, alignment, species, 
strength, attack, dexterity, intelligence, defense)
VALUES ("John Jonz", "Martian Manhunter", "Supergirl", "Good", "martian",
8, 10, 8, 7, 8);

INSERT INTO Characters (
full_name,  main_alias, _show, alignment, species, 
strength, attack, dexterity, intelligence, defense)
VALUES ("Sara Lance", "White Canary", "Legends of Tomrrow", "Good", "human",
7, 7, 9, 7, 8);

INSERT INTO Characters (
full_name,  main_alias, _show, alignment, species, 
strength, attack, dexterity, intelligence, defense)
VALUES ("Mick Rory", "Heat Wave", "Legends of Tomrrow", "Good", "human",
7, 7, 9, 7, 8);

INSERT INTO Characters (
full_name,  main_alias, _show, alignment, species, 
strength, attack, dexterity, intelligence, defense)
VALUES ("Jeffeson Pierce", "Black Lightning", "Black Lightning", "Good", "meta-human",
7, 9, 7, 7, 8);

INSERT INTO Characters (
full_name,  main_alias, _show, alignment, species, 
strength, attack, dexterity, intelligence, defense)
VALUES ("Tobias Whale", "The Great White Whale", "Black Lightning", "Bad", "enhanced human",
8, 9, 7, 8, 6);

