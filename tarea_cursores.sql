set serveroutput on;


DECLARE


    --*****************************************************
    -- registro de salario
    --*****************************************************
    TYPE percepcion IS RECORD(
        empleado nvarchar2(200),
        salario_diario number,
        dias_trabajados number,
        salario_a_pagar number
    );
    --*****************************************************
    
    
    --*****************************************************
    -- cursor de tabla empleados
    --*****************************************************
    CURSOR c_empleado IS
        select nombre, salario, dias_trabajados from empleados;
        
    reg_empleado percepcion;
    --*****************************************************
    
    
    --*****************************************************
    -- procedimiento para imprimir registro
    --*****************************************************

    PROCEDURE impresion(registro percepcion) IS
    
    BEGIN
        dbms_output.put_line('*********************************************');
        dbms_output.put_line('Empleado: ' || registro.empleado);
        dbms_output.put_line('Salario diario: ' || registro.salario_diario);
        dbms_output.put_line('Dias trabajados: ' || registro.dias_trabajados);
        dbms_output.put_line('Salario a pagar: ' || registro.salario_a_pagar);
        dbms_output.put_line('*********************************************');
    
    END;
    --*****************************************************


BEGIN

    OPEN c_empleado;
    LOOP
        FETCH c_empleado INTO reg_empleado.empleado, reg_empleado.salario_diario, reg_empleado.dias_trabajados;
        EXIT WHEN c_empleado%notfound;
        
        reg_empleado.salario_diario:= reg_empleado.salario_diario / 30;
        reg_empleado.salario_a_pagar:= reg_empleado.salario_diario * reg_empleado.dias_trabajados;
        
        impresion(reg_empleado);
    
    END LOOP;


    EXCEPTION
    
    WHEN others THEN
    
        dbms_output.put_line('Algo salio mal');
    
    ;

END;
/