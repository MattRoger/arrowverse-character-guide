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
  
  img varchar(1000) NOT NULL
);

INSERT INTO Characters (
full_name,  main_alias, _show, alignment,species, 
strength, attack, dexterity, intelligence, defense, img)
VALUES ("Oliver Queen",  "The Green Arrow", "Arrow", "Good", "human",
7, 9, 8, 9, 7,
'arrow/green_arrow.jpg');

INSERT INTO Characters (
full_name,  main_alias, _show, alignment, species, 
strength, attack, dexterity, intelligence, defense, img)
VALUES ("John Diggle",  "Spartan", "Arrow", "Good", "human",
7, 8, 6, 7, 7,
'arrow/spartan.jpg');

INSERT INTO Characters (
full_name,  main_alias, _show, alignment, species, 
strength, attack, dexterity, intelligence, defense, img)
VALUES ("Barry Allen", "The Flash", "flash", "Good", "meta-human",
8, 8, 10, 8, 9,
'flash/flash.png');

INSERT INTO Characters (
full_name,  main_alias, _show, alignment, species, 
strength, attack, dexterity, intelligence, defense, img)
VALUES ("Cisco Ramon", "Vibe", "flash", "Good", "meta-human",
5, 7, 7, 9, 9,
'flash/vibe.jpg');

INSERT INTO Characters (
full_name,  main_alias, _show, alignment, species, 
strength, attack, dexterity, intelligence, defense , img)
VALUES ("Kara Danvers", "Supergirl", "supergirl", "Good", "kryptonian",
9, 10, 8, 7, 8,
"supergirl/supergirl.jpg");

INSERT INTO Characters (
full_name,  main_alias, _show, alignment, species, 
strength, attack, dexterity, intelligence, defense , img)
VALUES ("John Jonz", "Martian Manhunter", "supergirl", "Good", "martian",
8, 10, 8, 7, 8,
'supergirl/manhunter.jpg');

INSERT INTO Characters (
full_name,  main_alias, _show, alignment, species, 
strength, attack, dexterity, intelligence, defense, img)
VALUES ("Sara Lance", "White Canary", "legends", "Good", "human",
7, 7, 9, 7, 8,
'legends/sara.jpg');

INSERT INTO Characters (
full_name,  main_alias, _show, alignment, species, 
strength, attack, dexterity, intelligence, defense, img)
VALUES ("Mick Rory", "Heat Wave", "legends", "Good", "human",
7, 7, 9, 7, 8,
'legends/mick.jpg');

INSERT INTO Characters (
full_name,  main_alias, _show, alignment, species, 
strength, attack, dexterity, intelligence, defense, img)
VALUES ("Jeffeson Pierce", "Black Lightning", "blacklight", "Good", "meta-human",
7, 9, 7, 7, 8,
'blacklight/blacklight.jpg');

INSERT INTO Characters (
full_name,  main_alias, _show, alignment, species, 
strength, attack, dexterity, intelligence, defense, img)
VALUES ("Tobias Whale", "The Great White Whale", "blacklight", "Bad", "enhanced human",
8, 9, 7, 8, 6,
'blacklight/whale.jpg');

