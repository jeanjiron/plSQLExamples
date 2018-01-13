CREATE OR REPLACE obtener_menor(x in number, y in number, z out number)
IS
BEGIN

 IF( x < y) THEN
 
    z:= x;
    ELSE
        z:=y;
 
 END IF;

END;
/