create or replace function total_empleados 
return number
IS

total number:= 0;

BEGIN

    SELECT COUNT(*) INTO total FROM empleados;
    
    return total;

END;
/