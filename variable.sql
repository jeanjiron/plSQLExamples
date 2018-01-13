set serveroutput on;

DECLARE
--Definición de funciones y variables

    PI CONSTANT number := 3.1416;
    area number;
    radio number;
    
    salario number :=1500;
    nombreEmpleado NVARCHAR2(100);
    activo boolean;
    fecha date;

BEGIN



    nombreEmpleado:='Juan Carlos Jiron';
    activo := false;
    fecha := '25-12-2017';

    dbms_output.put_line('Hola mundo');
    dbms_output.put_line('Nombre: ' || nombreEmpleado);
    dbms_output.put_line('Salario: ' || salario);
    dbms_output.put_line('Fecha: ' || fecha);
    dbms_output.put_line('Activo: ' || case WHEN activo THEN 'SI' ELSE 'NO' END);
    
    
    radio := 7;
    area := PI * (radio * radio);
    dbms_output.put_line('Area: ' || round( area,2 ) || 'cm2'); 

END;
/




