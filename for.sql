set serveroutput on;

DECLARE
x number:= 0;
y number:= 0;

BEGIN

    dbms_output.put_line('For ');
    <<ciclo_tabla1>>
    FOR i IN 1..10 LOOP
    
        IF( MOD(i,2) <> 0 ) THEN
            CONTINUE;
        END IF;
    
        dbms_output.put_line(i || '*2=' || (i*2));
    
    END LOOP ciclo_tabla1;
    
    dbms_output.put_line('Loop ');
    LOOP 
    
        dbms_output.put_line( x );
        x:= x+10;
        
        IF(x >= 120 )THEN
            EXIT;
        END IF;

    END LOOP;
    
    dbms_output.put_line('While ');
    WHILE y <100 LOOP
    
        dbms_output.put_line( y );
        y:= y+20;

    END LOOP;

END;
/