set serveroutput on;

DECLARE

    salario number:= round( dbms_random.value(600,2000) );
    aumento number;

BEGIN

    IF(salario >= 1401) THEN
        aumento:= salario * 0.05;
        ELSIF(salario between 951 and 1400) THEN
            aumento:= salario * 0.10;
            ELSIF(salario between 601 and 950) THEN
                aumento:= salario * 0.135;
                ELSE
                aumento:= salario * 0.15;
    END IF;
    
    dbms_output.put_line('Salario: ' || salario);
    dbms_output.put_line('Aumento: ' || aumento);
    dbms_output.put_line('Salario neto: ' || (salario + aumento));

END;
/