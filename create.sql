
CREATE TABLE city (
    city_name CHAR(30 CHAR) NOT NULL
);

ALTER TABLE city ADD CONSTRAINT city_pk PRIMARY KEY ( city_name );

CREATE TABLE criminal (
    date_of_crime         timestamp,
    crime_id              INTEGER NOT NULL,
    person_gender_gender  CHAR(2 CHAR) NOT NULL,
    crime_crime_name      CHAR(40 CHAR) NOT NULL,
    city_city_name        CHAR(30 CHAR) NOT NULL,
    person_person_id      INTEGER NOT NULL
);

CREATE UNIQUE INDEX criminal__idx ON
    criminal (
        person_person_id
    ASC );

ALTER TABLE criminal
    ADD CONSTRAINT criminal_pk PRIMARY KEY ( crime_id,
                                             person_person_id );


CREATE TABLE person (
    name             CHAR(40 CHAR),
    date_of_birth    timestamp,
    armed_yes_or_no  CHAR(10 CHAR),
    gender           CHAR(2 CHAR) NOT NULL,
    person_id        INTEGER NOT NULL
);


ALTER TABLE person ADD CONSTRAINT person_pk PRIMARY KEY (person_id );

CREATE TABLE police (
    criminal_crime_id               INTEGER NOT NULL,
    criminal_person_person_id       INTEGER NOT NULL,
    status                          CHAR(50 CHAR) NOT NULL,
    policeman_person_person_id      INTEGER NOT NULL,
    policeman_policeman_id          INTEGER NOT NULL
);

ALTER TABLE police
    ADD CONSTRAINT police_pk PRIMARY KEY ( criminal_crime_id,
                                           criminal_person_person_id );

CREATE TABLE policeman (
    person_person_id      INTEGER NOT NULL,
    policeman_id          INTEGER NOT NULL
);

CREATE UNIQUE INDEX policeman__idx ON
    policeman (
        person_person_id
    ASC );

ALTER TABLE policeman
    ADD CONSTRAINT policeman_pk PRIMARY KEY ( person_person_id,
                                              policeman_id );

CREATE TABLE crime (
    crime_name CHAR(40 CHAR) NOT NULL
);

ALTER TABLE crime ADD CONSTRAINT crime_pk PRIMARY KEY ( crime_name );

ALTER TABLE criminal
    ADD CONSTRAINT criminal_city_fk FOREIGN KEY ( city_city_name )
        REFERENCES city ( city_name );

ALTER TABLE criminal
    ADD CONSTRAINT criminal_person_fk FOREIGN KEY (person_person_id )
        REFERENCES person (person_id );

ALTER TABLE criminal
    ADD CONSTRAINT criminal_crime_fk FOREIGN KEY ( crime_crime_name )
        REFERENCES crime ( crime_name );


ALTER TABLE police
    ADD CONSTRAINT police_criminal_fk FOREIGN KEY ( criminal_crime_id,
                                                    criminal_person_person_id )
        REFERENCES criminal ( crime_id,
                              person_person_id );

ALTER TABLE police
    ADD CONSTRAINT police_policeman_fk FOREIGN KEY (policeman_person_person_id,
                                                     policeman_policeman_id )
        REFERENCES policeman ( person_person_id,
                               policeman_id );

ALTER TABLE policeman
    ADD CONSTRAINT policeman_person_fk FOREIGN KEY (person_person_id )
        REFERENCES person (person_id );
        
        

-- Oracle SQL Developer Data Modeler Summary Report: 
-- 
-- CREATE TABLE                             7
-- CREATE INDEX                             3
-- ALTER TABLE                             14
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
