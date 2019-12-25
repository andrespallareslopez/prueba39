
CREATE PROCEDURE dbo.pa_Existe
/*
	(
		@parameter1 datatype = default value,
		@parameter2 datatype OUTPUT
	)
*/
@Sql nvarchar(3000)
AS
	/* SET NOCOUNT ON */
	
declare @Cadena as nvarchar(3000)
--declare @Valor as bit

--set  @Sql='select * from personal1.dbo.empleados where IDEmpleado=249'

set @Cadena='declare @Valor as bit if '+'Exists('+@Sql+') begin set @Valor=1 end else begin set @Valor=0 end select @Valor as valor' 
execute(@Cadena)
