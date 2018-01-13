
set serveroutput on;

DECLARE

x number:=0;
y number:=3;
z number;


BEGIN

    z:= MAYOR_ENTRE(x,y);
    
    dbms_output.put_line('Mayor: ' || z);

END;
/




