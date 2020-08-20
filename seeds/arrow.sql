-- Arrow
-- Oliver Queen

INSERT INTO Characters (
main_id, first_name, last_name, main_alias, _show, alignment,species, 
img, bg_color)
VALUES ( 101, "Oliver", "Queen",  "The Green Arrow", "arrow", "good", "human",
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
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(101, 1019);

-- Diggle

INSERT INTO Characters (
main_id, first_name, last_name, main_alias, _show, alignment,species, 
img, bg_color)
VALUES ( 102, "John", "Diggle",  "Spartan", "arrow", "good", "human",
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

-- felicity

INSERT INTO Characters (
main_id, first_name, last_name, main_alias, _show, alignment,species, 
 img, bg_color)
VALUES ( 103, "Felicity", "Smoke",  "Overwatch", "arrow", "good", "human",
'arrow/felicity.jpg',
"#1d8d4d"
);

INSERT INTO hero_skills(hero_id,skill_id)
VALUES(103, 1007);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(103, 1010);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(103, 1011);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(103, 1012);

-- slade wilson

INSERT INTO Characters (
main_id, first_name, last_name, main_alias, _show, alignment,species, 
 img, bg_color)
VALUES ( 104, "Slade", "Wilson",  "Deathstroke", "arrow", "bad", "Enhanced Human",
'arrow/deathstroke.jpg',
"#190136"
);
-- skills
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(104, 1001);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(104, 1003);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(104, 1004);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(104, 1005);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(104, 1006);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(104, 1007);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(104, 2001);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(104, 2002);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(104, 2019);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(104, 2020);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(104, 2021);


-- dinah drake

INSERT INTO Characters (
main_id, first_name, last_name, main_alias, _show, alignment,species, 
img, bg_color)
VALUES ( 105, "Dinah", "Drake",  "Black Canary", "arrow", "good", "Meta-human",
'arrow/dinahdrake.jpg',
"#2b2a2b"
);

INSERT INTO hero_skills(hero_id,skill_id)
VALUES(105, 1001);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(105, 1004);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(105, 1005);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(105, 1006);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(105, 1007);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(105, 1016);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(105, 1019);

-- wild dog

INSERT INTO Characters (
main_id, first_name, last_name, main_alias, _show, alignment,species, 
img, bg_color)
VALUES ( 106, "Rene", "Ramirez",  "Wild Dog", "arrow", "good", "Meta-human",
'arrow/wilddog.jpg',
"#10192b"
);

INSERT INTO hero_skills(hero_id,skill_id)
VALUES(106, 1001);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(106, 1004);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(106, 1006);


