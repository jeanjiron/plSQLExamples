set serveroutput on;

DECLARE

    x number:=10;
    y number:=1;
    z number;

BEGIN

    dbms_output.put_line('Menor: ' || obtener_menor(x,y,z));

END;
