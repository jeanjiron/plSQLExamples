set serveroutput on;

DECLARE
    nota number:= 85; 
    ran number:= round( dbms_random.value(0,5) );

BEGIN

    IF(nota > 90) THEN
        dbms_output.put_line( 'Excelente' );
        ELSIF(nota > 85) THEN
            dbms_output.put_line( 'Muy bien' );
            ELSIF(nota > 70) THEN
                dbms_output.put_line( 'Regular' );
                ELSE
                    dbms_output.put_line( 'Debe mejorar' );

    END IF;
    
    
    case
        when ran=0 then
            dbms_output.put_line('Cero');
            when ran=1 then
            dbms_output.put_line('Uno');
            when ran=2 then
            dbms_output.put_line('Dos');
            when ran=3 then
            dbms_output.put_line('Tres');
            when ran=4 then
            dbms_output.put_line('Cuatro');
            when ran=5 then
            dbms_output.put_line('Cinco');
            
            END CASE;
    

END;
/