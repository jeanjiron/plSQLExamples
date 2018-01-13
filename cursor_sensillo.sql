set serveroutput on;


DECLARE

promedio number :=0;

BEGIN

    FOR i in (select * from notas order by nombre asc) LOOP
    
        promedio := (i.nota1 + i.nota2 + i.nota3 + i.nota4) /4;
        dbms_output.put_line('Nombre: ' || i.nombre || ', Promedio: ' || promedio);
    
    END LOOP;


END;
/