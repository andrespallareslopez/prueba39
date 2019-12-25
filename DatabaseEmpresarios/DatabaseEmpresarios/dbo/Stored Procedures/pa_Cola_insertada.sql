
CREATE PROCEDURE [dbo].[pa_Cola_insertada]
@CodFactura uniqueidentifier,
@Mesa int,
@Cliente varchar(100),
@Trabajador varchar(100),
@Operacion char(20),
@Factura int,
@pax int AS
SELECT 'Inserción con éxito';

declare @codcola int;

if exists(select coddetalle from gesfactique where estadio='Entrada' and codcola is null)
begin
	INSERT INTO gescola (codfactura,mesa,cliente,fecha,trabajador,estado,operacion,factura,pax)
	VALUES (@codfactura,@mesa,@cliente,getdate(),@trabajador,'Pendiente',@operacion,@factura,@pax);

	set @codcola = (select top 1 codcola from gescola order by codcola desc)

	update gesfactique set codcola=@codcola 
	where codfactura=@codfactura and codcola is null and estadio='Entrada'
end
