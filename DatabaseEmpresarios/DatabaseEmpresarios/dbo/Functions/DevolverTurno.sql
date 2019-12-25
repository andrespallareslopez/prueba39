
CREATE FUNCTION [DevolverTurno](@Fecha as datetime)
RETURNS int AS  
BEGIN 
   declare @Valor as int
   if (@Fecha>='00:00' and @fecha<='17:00')
   begin
   select @Valor=1
   end
   else
   begin
    select @Valor=2
   end
   return @Valor
END


