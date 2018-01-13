set serveroutput on;

DECLARE

-- definimos los arreglos

    type alumnosArray is varray(5) of nvarchar2(100);
    type notasArray is varray(5) of number;
    
--utilizamos los arreglos

    alumnos alumnosArray;
    notas notasArray;
    
BEGIN

    alumnos:= alumnosArray( 'Juan', 'Carlos', 'Fany', 'Monse', 'Becky' );
    notas := notasArray(1,2,3,4,5);
    
    dbms_output.put_line( alumnos(1) );
    dbms_output.put_line(notas(1));
    
    notas(1):= 90;

    dbms_output.put_line(notas(1));


END;
/