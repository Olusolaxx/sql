CREATE PACKAGE pkg 
IS
  PROCEDURE proc_1;
END pkg;
/
CREATE OR REPLACE PROCEDURE p 
IS 
BEGIN 
  pkg.proc_1(); 
END;
/
CREATE OR REPLACE PACKAGE pkg 
IS
  PROCEDURE proc_1;
  PROCEDURE unheard_of;
END pkg;
/
