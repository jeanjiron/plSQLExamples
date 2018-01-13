set serveroutput on;

DECLARE

    x number:= 0;

    --********************************
    -- obtener promedio
    --********************************
    FUNCTION obtener_promedio
    return number
    IS
        promedio number:= 0;
    BEGIN
    
        select avg(salario) into promedio from EMPLEADOS;
        return promedio;
    
    END;
    --******************* termina obtener promedio
    

BEGIN

    x:= obtener_promedio();
    dbms_output.put_line('Promedio: ' || x );


END;
/

