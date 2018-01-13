
create or replace PROCEDURE actualizar_fecha_empleados
AS
BEGIN

    UPDATE empleados set actualizado=sysdate;

END;
/