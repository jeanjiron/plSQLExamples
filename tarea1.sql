set serveroutput on;


DECLARE

    camisetas number:= 5;
    monto number := 220;
    impuesto number:= 0.15;
    
    subtotal number;
    total number;

BEGIN


    subtotal:= camisetas * monto;
    total:= subtotal + (subtotal* impuesto);
    
    dbms_output.put_line( 'Subtotal: ' || subtotal );
    dbms_output.put_line( 'Total: ' || total );

END;
/

