CREATE OR REPLACE TRIGGER police_trigger
    BEFORE DELETE ON police
    FOR EACH ROW
    
DECLARE
    can_not_delete EXCEPTION;
    PRAGMA exception_init(can_not_delete, -20001);

BEGIN

    IF (:old.status = 'not solved') THEN
        RAISE_APPLICATION_ERROR(-20001, 'This crime not solved');
    END IF;
    
END;