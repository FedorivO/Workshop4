       
INSERT INTO city (city_name) VALUES ('Lviv');
INSERT INTO city (city_name) VALUES ('Rum');
INSERT INTO city (city_name) VALUES ('Krakiv');

INSERT INTO crime (crime_name) VALUES ('murder');
INSERT INTO crime (crime_name) VALUES ('theft');
INSERT INTO crime (crime_name) VALUES ('beating');

INSERT INTO person ( name, year_of_birth, armed_yes_or_no, gender, person_id) VALUES ('Bob',1974, 'yes', 'M', 1);
INSERT INTO person ( name, year_of_birth, armed_yes_or_no, gender, person_id) VALUES ('Boba',1999, 'no', 'F', 2);
INSERT INTO person ( name,  year_of_birth, armed_yes_or_no, gender, person_id) VALUES ('Boban',1990, 'yes', 'M', 3);
INSERT INTO person ( name,  year_of_birth, armed_yes_or_no, gender, person_id) VALUES ('Boby',1992, 'yes', 'M', 4);
INSERT INTO person ( name,  year_of_birth, armed_yes_or_no, gender, person_id) VALUES ('Bobych',1982, 'no', 'F', 5);
INSERT INTO person ( name,  year_of_birth, armed_yes_or_no, gender, person_id) VALUES ('Bib',1990, 'yes', 'M', 6);

INSERT INTO criminal (year_of_crime, crime_id,  crime_crime_name, city_city_name, person_person_id) VALUES (2017, 1, 'murder', 'Lviv',1);
INSERT INTO criminal (year_of_crime, crime_id,  crime_crime_name, city_city_name, person_person_id) VALUES (2019, 2,  'theft', 'Rum',2);
INSERT INTO criminal (year_of_crime, crime_id,  crime_crime_name, city_city_name, person_person_id) VALUES (2011, 3, 'beating', 'Krakiv',3);

INSERT INTO policeman (person_person_id, policeman_id) VALUES (4, 4);
INSERT INTO policeman (person_person_id, policeman_id) VALUES (5, 5);
INSERT INTO policeman (person_person_id, policeman_id) VALUES (6, 6);

INSERT INTO police (criminal_crime_id,criminal_person_person_id, status, policeman_person_person_id, policeman_policeman_id) 
    VALUES (1, 1,  'solved', 4, 4);
INSERT INTO police (criminal_crime_id, criminal_person_person_id, status,  policeman_person_person_id, policeman_policeman_id) 
    VALUES (2, 2,  'solved', 5, 5);
INSERT INTO police (criminal_crime_id,criminal_person_person_id, status,  policeman_person_person_id, policeman_policeman_id) 
    VALUES (3, 3,  'not solved', 6, 6);
