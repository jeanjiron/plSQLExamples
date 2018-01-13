
CREATE OR REPLACE FUNCTION promedio_notas(nota1 number, nota2 number, nota3 number, nota4 number)
return number
IS

    promedio number := 0;

BEGIN

    promedio := (nota1 + nota2 + nota3 + nota4) / 4;
    
    return promedio;

END;
/