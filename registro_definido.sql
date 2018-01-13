set serveroutput on;


DECLARE

    type carro is record(
        modelo nvarchar2(100),
        marca nvarchar2(100),
        puertas number
    );
    
    fiesta carro;
    audi carro;
    
    PROCEDURE imprimir(car carro) IS
    BEGIN
    
        dbms_output.put_line(car.modelo);
        dbms_output.put_line(car.marca);
        dbms_output.put_line(car.puertas);
    
    END;


BEGIN

    fiesta.marca := 'Ford';
    fiesta.modelo := 'Fiesta';
    fiesta.puertas := '4';
    
    audi.marca := 'Ford';
    audi.modelo := 'Audi';
    audi.puertas := '4';
    
    imprimir(fiesta);
    imprimir(audi);

END;
/