set serveroutput on;

DECLARE

    nombre nvarchar2(200);
    salario number;
    
    CURSOR c_empleado IS
        select nombre, salario from empleados;

BEGIN

    OPEN c_empleado;
    LOOP
        FETCH c_empleado INTO nombre, salario;
        EXIT WHEN c_empleado%notfound;
        
        dbms_output.put_line('Nombre: ' || nombre || '    salario: ' || salario);

    
    END LOOP;
    

END;
/