CREATE DATABASE justiceleague;

DROP TABLE IF EXISTS heroes;
DROP TABLE IF EXISTS details;

CREATE TABLE heroes (
    id SERIAL PRIMARY KEY,
    codename TEXT,
    first_name TEXT,
    last_name TEXT
);

CREATE TABLE details (
    hero_id SERIAL PRIMARY KEY,
    powers TEXT,
    bio TEXT,
    img TEXT
);

INSERT INTO heroes (codename, first_name, last_name) VALUES ('Superman', 'Clark', 'Kent');
INSERT INTO heroes (codename, first_name, last_name) VALUES ('Batman', 'Bruce', 'Wayne');
INSERT INTO heroes (codename, first_name, last_name) VALUES ('Wonder Woman', 'Diana', 'Prince');
INSERT INTO heroes (codename, first_name, last_name) VALUES ('Flash', 'Barry', 'Allen');
INSERT INTO heroes (codename, first_name, last_name) VALUES ('Aquaman', 'Arthur', 'Curry');
INSERT INTO heroes (codename, first_name, last_name) VALUES ('Cyborg', 'Victor', 'Stone');
INSERT INTO heroes (codename, first_name, last_name) VALUES ('Green Lantern', 'Kyle', 'Rayner');
INSERT INTO heroes (codename, first_name, last_name) VALUES ('Martian Manhunter', 'J''onn', 'J''onzz');
INSERT INTO heroes (codename, first_name, last_name) VALUES ('Black Canary', 'Dinah', 'Lance');
INSERT INTO heroes (codename, first_name, last_name) VALUES ('Green Arrow', 'Oliver', 'Queen');


INSERT INTO details (hero_id, powers, bio, img) VALUES ((SELECT id FROM heroes WHERE codename='Superman'), 'flight, super strength, super speed, heat vision', 'Superman (real name Kal-El, secret identity Clark Kent) is a famous Kryptonian superhero from Metropolis, a reporter for the Daily Planet, and a founding member of the Justice League.', '/images/profilePhotos/Supermanflying.png');
INSERT INTO details (hero_id, powers, bio, img) VALUES ((SELECT id FROM heroes WHERE codename='Batman'), 'He''s Batman, just don''t, trust me, you''ll regret it', 'Batman (real name Bruce Wayne), from Gotham City and a founding member of the Justice League. Witnessing the murder of his parents as a child leads him to train himself to physical and intellectual perfection and don a bat-themed costume in order to fight crime.', '/images/profilePhotos/6fbab84819d016a4e1c331f202af9b30.jpg');
INSERT INTO details (hero_id, powers, bio, img) VALUES ((SELECT id FROM heroes WHERE codename='Wonder Woman'), 'Flight, super strength, super speed, enchanted gauntlets', 'Wonder Woman is the princess Diana, the daughter of Hippolyta, Queen of the Amazons and Zeus, the mightiest of the Gods of Olympus. Diana volunteered to leave behind her home of Themyscira and champion the Amazons'' message of peace, fighting for justice and equality in Man''s World. She is a founding member of the Justice League.
', '/images/profilePhotos/81359004a955e75efbf9d5721b7f6c1b.jpg');
INSERT INTO details (hero_id, powers, bio, img) VALUES ((SELECT id FROM heroes WHERE codename='Flash'),'Faster than light super speed', 'Flash (real name Barry Allen) is a superhero speedster from Central City and a founding member of the Justice League. He is the former mentor of his nephew, Wally West and later his grandson, Bart Allen. He is called the Fastest Man Alive, and the second person to have taken up the identity of the Flash, the first being Jay Garrick.', '/images/profilePhotos/eb3a5051b80fb7639ff23fbab91c0bc7.jpg');
INSERT INTO details (hero_id, powers, bio, img) VALUES ((SELECT id FROM heroes WHERE codename='Aquaman'), 'Super strength, ability to breathe underwater, telepathic communication with sea creatures, ability to withstand water pressure at the bottom of the ocean', 'Aquaman, also known as Arthur Curry and Orin, is a superhero and the ruler of the seas. As the king of Atlantis and other undersea territories, he technically controls most of the planet', '/images/profilePhotos/AQM_Cv1_5293e2230f0836.12270571.jpg');
INSERT INTO details (hero_id, powers, bio, img) VALUES ((SELECT id FROM heroes WHERE codename='Cyborg'), 'Genius-level intellect, cybernetic enhancements granting flight, technopathy, self-regenerative systems, and generation of boom tubes', 'Cyborg, also known as Victor Stone, is is a former star pupil and athlete who is half man and half machine. His body was destroyed in a tragic accident, but he was saved through experimental technology; most of his body parts have been replaced with cybernetic ones, which grant him access to a large arsenal of high-tech gadgets and weaponry, while also providing life support. Stone struggles with his humanity as a machine, although his enhancements have made him incredibly powerful. ', '/images/profilePhotos/250px-Cyborg_(Victor_Stone).jpg');
INSERT INTO details (hero_id, powers, bio, img) VALUES ((SELECT id FROM heroes WHERE codename='Green Lantern'), 'Power ring granting abilities such as generation of hard-light constructs, force fields, space-travel, real-time translation of all languages', 'Kyle Rayner is a high ranking member of the Green Lantern Corps from Earth. After the rest of the Corps was destroyed, he alone was selected to bear the last power ring and carry on the title. Although he acted alone for many years, when the Corps was reformed, his skill level gave him a position as an Honor Guard, only behind Salakk and the Guardians in the chain of command of the Corps. He has also been a host for the Ion entity, and a member of the Justice League.
', '/images/profilePhotos/tumblr_m5s4jiVxk91qfxwtoo4_1280.jpg');
INSERT INTO details (hero_id, powers, bio, img) VALUES ((SELECT id FROM heroes WHERE codename='Martian Manhunter'), 'Super strength, flight, telepathy, density shifting, shapeshifting, telekenesis', 'One of the last survivors of the civil war that ravaged his home planet of Mars, J''onn J''onnz traveled to Earth and now fights to protect his adoptive home. J''onn J''onzz of the planet Mars was accidentally transported to Earth, where he became one of its greatest champions under the moniker Martian Manhunter.
', '/images/profilePhotos/MartianManhunter350_904.jpg');
INSERT INTO details (hero_id, powers, bio, img) VALUES ((SELECT id FROM heroes WHERE codename='Black Canary'), 'Master martial artist and hand-to-hand combatant, Ultrasonic scream (Canary Cry)', 'Black Canary is a superhero vigilante who fights crime using martial arts and a sonic scream attack. She is one of the greatest fighters on earth, and also a strong tactical mind. ', '/images/profilePhotos/250px-Black_Canary_(circa_2015).png');
INSERT INTO details (hero_id, powers, bio, img) VALUES ((SELECT id FROM heroes WHERE codename='Green Arrow'), 'Master martial artist and hand-to-hand combatant, master archer and marksman, expert acrobat, utilizes high-tech equipment including armor, compound bow, and various types of specialty arrows', 'Oliver "Ollie" Queen is the Green Arrow, a vigilante who uses a bow and arrow to fight crime at a street level, while espousing socially liberal values.', '/images/profilePhotos/b471f7a2bc46f6b1bd6ba9fa3367a3bc413882e1_hq.jpg');