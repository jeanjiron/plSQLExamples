
set serveroutput on;

DECLARE
    
    cantidad number;
    nombre nvarchar2(100);
    

BEGIN

/*
    select user into nombre from dual;
    select count (*) into cantidad from dual;
    
    dbms_output.put_line('usuario: ' || nombre);
    dbms_output.put_line('cantidad: ' || cantidad);
    
*/
    select user, count(*) into nombre, cantidad from dual;
    dbms_output.put_line('usuario: ' || nombre);
    dbms_output.put_line('cantidad: ' || cantidad);

END;
/