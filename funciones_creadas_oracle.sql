set serveroutput on;


DECLARE

    nombre nvarchar2(100) := ' Juan ';
    nombre2 nvarchar2(100);
    apellido nvarchar2(100):= 'Jiron';
    hoy date := sysdate;
    


BEGIN

    dbms_output.put_line('Largo: ' || length(nombre));
    dbms_output.put_line('Trim: ' || trim(nombre) ||';');
    dbms_output.put_line('Lower: ' || lower(nombre));
    dbms_output.put_line('Upper: ' || upper(nombre));
    
    nombre := trim(nombre);
    
    dbms_output.put_line('Cortar: ' || substr(nombre,1,3));
    dbms_output.put_line('Reemplazar: ' || replace(nombre,'J','P') );
    
    --fechas
    
    dbms_output.put_line( 'Agregar mes: ' || add_months(hoy, 1) );
    dbms_output.put_line( 'Agregar mes: '|| (hoy + 1) );
    
    dbms_output.put_line( 'Dia: ' || to_char(hoy, 'dd') );
    dbms_output.put_line( 'Mes: ' || to_char(hoy, 'MM') );
    dbms_output.put_line( 'Mes y dia: ' || to_char(hoy, 'dd-MM') );
    dbms_output.put_line( 'Anio: ' || to_char(hoy, 'YYYY') );
    
    dbms_output.put_line('NVL: ' || NVL( nombre2,'Es nulo'));

END;
/