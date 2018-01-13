set serveroutput on;

DECLARE

empleados number;

BEGIN

empleados := TOTAL_EMPLEADOS();

dbms_output.put_line('Total de empleados: ' || empleados);

END;
/