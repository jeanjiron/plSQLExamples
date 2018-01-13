 set serveroutput on;
 
 DECLARE
 
    nota number:= 67;
 
 BEGIN
 
    IF(nota >= 67 and nota <= 70) THEN
        nota:= 70;
        dbms_output.put_line('Paso la materia: ' || nota);
        
        ELSE
        
        dbms_output.put_line('No paso la materia: ' || nota);        
    END IF;
 
 
 END;
 /