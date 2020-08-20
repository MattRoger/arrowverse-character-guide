-- supergirl

INSERT INTO Characters (
main_id, first_name, last_name, main_alias, _show, alignment,species, 
img, bg_color)
VALUES (401,"Kara", "Danvers", "Supergirl", "supergirl", "good", "kryptonian",
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
img, bg_color)
VALUES (402,"John", "Jonz", "Martian Manhunter", "supergirl", "good", "martian",
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
img, bg_color)
VALUES (403,"Lex", "Luthor", "Lex Luthor", "supergirl", "bad", "human",
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


-- alex danvers

INSERT INTO Characters (
main_id, first_name, last_name, main_alias, _show, alignment,species, 
img, bg_color)
VALUES (404,"Alex", "Danvers", "Agent Danvers", "supergirl", "good", "human",
'supergirl/alex.jpg',
"#022b3a"
);

INSERT INTO hero_skills(hero_id,skill_id)
VALUES(404, 1001);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(404, 1003);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(404, 1004);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(404, 1005);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(404, 1006);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(404, 1007);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(404, 1008);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(404, 1009);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(404, 1014);

-- brainic

INSERT INTO Characters (
main_id, first_name, last_name, main_alias, _show, alignment,species, 
img, bg_color)
VALUES (405,"Querl", "Dox", "Brainiac 5", "supergirl", "good", "Coluan",
'supergirl/brainy.jpg',
"#233846"
);
INSERT INTO AKA(AKA_id, main_id, aka)
VALUES(4051, 405, "Brainy");
INSERT INTO AKA(AKA_id, main_id, aka)
VALUES(4052, 405, "Barney Fife");

INSERT INTO hero_skills(hero_id,skill_id)
VALUES(405, 1019);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(405, 1006);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(405, 1007);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(405, 1009);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(405, 1011);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(405, 1012);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(405, 2005);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(405, 2009);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(405, 2019);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(405, 2016);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(405, 2038);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(405, 2039);

-- nia

INSERT INTO Characters (
main_id, first_name, last_name, main_alias, _show, alignment,species, 
img, bg_color)
VALUES (406,"Nia", "Nal", "Dreamer", "supergirl", "good", "Human-Naltorian hybrid",
'supergirl/dreamer.jpg',
"#361a40"
);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(406, 2019);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(406, 2040);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(406, 2041);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(406, 2042);
INSERT INTO hero_skills(hero_id,skill_id)
VALUES(406, 2043);