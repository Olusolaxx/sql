SET SERVEROUTPUT ON

DECLARE
 e_insert_excep EXCEPTION;
 PRAGMA EXCEPTION_INIT   (e_insert_excep, -01400);
BEGIN
 INSERT INTO departments (department_id, department_name) VALUES (280, 
 NULL);
EXCEPTION
 WHEN e_insert_excep THEN
   DBMS_OUTPUT.PUT_LINE('INSERT OPERATION FAILED');
   DBMS_OUTPUT.PUT_LINE(SQLERRM);
END;
/