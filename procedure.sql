create or replace PROCEDURE add_crime (
    policeman_policeman_id      number
    ,
    policeman_person_person_id    number
    ,
    status   VARCHAR
) AS
    indeficate_id NUMBER
    ;
    indeficate_status NUMBER
    ;
    no_data EXCEPTION
    ;
BEGIN

    SELECT COUNT(*)
    INTO indeficate_id
    FROM police
    WHERE
        policeman_person_person_id LIKE policeman_policeman_id;

    SELECT COUNT(*)
    INTO indeficate_status
    FROM police 
    WHERE status='solved';

    IF (indeficate_id = 1) and (indeficate_status = 1)  THEN
      INSERT INTO police (criminal_crime_id,criminal_person_person_id, status, policeman_person_person_id, policeman_policeman_id)   VALUES (1, 7, 'solved', 4, 4);

    ELSE
        RAISE no_data;

    END IF;

EXCEPTION
    WHEN no_data THEN
        dbms_output.put_line('No such person or crime in the database');
    WHEN OTHERS THEN
        dbms_output.put_line('Wrong');
END;
