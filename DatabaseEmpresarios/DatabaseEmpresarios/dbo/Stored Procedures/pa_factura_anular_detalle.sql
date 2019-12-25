
CREATE PROCEDURE [dbo].[pa_factura_anular_detalle]
@actividad char(50),
@operacion char(50),
@coddetalle uniqueidentifier,
@anula int,
@codtrabajador int,
@trabajador varchar(100),
@coddispositivo int,
@dispositivo char(50),
@codfactura uniqueidentifier AS

DECLARE @total int;
DECLARE @unidad int;
DECLARE @subtotal decimal(18,2);
DECLARE @importe decimal(18,2);
DECLARE @codcola int;

SET @unidad = (select unidad from gesfactique where coddetalle=@coddetalle);
SET @importe = (select importe from gesfactique where coddetalle=@coddetalle);

SELECT 'Anulado registro'

IF (@actividad='Nuevo')
	-- ANULAR NUEVO REGISTRO
	BEGIN
		IF (@unidad <> @anula)
			BEGIN
				SET @total = @unidad - @anula
				SET @subtotal = @total * @importe

				UPDATE gesfactique SET unidad=@unidad,
				subtotal=@subtotal,actividad='Servicio',
				detalle=detalle + ' (Corregido)'
				WHERE coddetalle=@coddetalle

				SET @subtotal = @anula * @importe



				INSERT INTO gesfactique 
				(coddetalle,codfactura,codproducto,detalle,unidad,importe,subtotal,codtrabajador,
				suceso,operacion,fecha,coddispositivo,dispositivo,actividad,codzona,zona,codgrupo,grupo,
				codfamilia,familia,codactividad,mesa,cliente,trabajador,codperiodo,periodo,activo,
				relacion,estadio,codcola) 
				SELECT newid(),codfactura,codproducto,detalle + ' [Anulacion]',
				@anula,importe,@subtotal,@codtrabajador,'Anulacion',
				@operacion,getdate(),
				@coddispositivo,@dispositivo,'Servicio',codzona,zona,
				codgrupo,grupo,codfamilia,familia,null,mesa,cliente,
				@trabajador,codperiodo,periodo,activo,relacion,
				estadio,codcola
				FROM gesfactique
				WHERE coddetalle=@coddetalle;



				UPDATE gesfactique 
				SET suceso='Anulacion',operacion=@operacion,actividad='Servicio'
				WHERE relacion=@coddetalle


			END
		ELSE
			BEGIN
				UPDATE gesfactique 
				SET suceso='Anulacion',operacion=@operacion,actividad='Servicio',detalle=detalle + ' [Corregido]'
				WHERE coddetalle=@coddetalle

				UPDATE gesfactique
				SET suceso='Anulacion',operacion=@operacion,actividad='Servicio'
				WHERE relacion=@coddetalle
			END
	END
else
	BEGIN
	


		-- ANULAR REGISTRO VIEJO

		IF (@unidad <> @anula)
			BEGIN
				SET @total = @unidad - @anula
				SET @subtotal = @total * @importe



				UPDATE gesfactique SET unidad=@total,
				subtotal=@subtotal,actividad='Fabricación',
				detalle=detalle + ' (Corregido)',
				estadio='Entrada'
				WHERE coddetalle=@coddetalle

				SET @subtotal = @anula * @importe



				INSERT INTO gesfactique
				(coddetalle,codfactura,codproducto,detalle,unidad,importe,subtotal,codtrabajador,
				suceso,operacion,fecha,coddispositivo,dispositivo,actividad,codzona,zona,codgrupo,grupo,
				codfamilia,familia,codactividad,mesa,cliente,trabajador,codperiodo,periodo,activo,
				relacion,estadio,codcola) 
				SELECT newid(),codfactura,codproducto,detalle + ' [Anulacion]',
				@anula,importe,@subtotal,@codtrabajador,'Anulacion',
				@operacion,getdate(),
				@coddispositivo,@dispositivo,'Fabricación',codzona,zona,
				codgrupo,grupo,codfamilia,familia,null,mesa,cliente,
				@trabajador,codperiodo,periodo,activo,relacion,
				'Entrada',codcola
				FROM gesfactique
				WHERE coddetalle=@coddetalle;



				UPDATE gesfactique 
				SET suceso='Anulacion',operacion=@operacion,actividad='Fabricación',
				estadio='Entrada'
				WHERE relacion=@coddetalle


			END
		ELSE
			BEGIN



				UPDATE gesfactique 
				SET suceso='Anulacion',operacion=@operacion,actividad='Fabricación',
				detalle=detalle + ' [Anulado]',estadio='Entrada'
				WHERE coddetalle=@coddetalle

				UPDATE gesfactique
				SET suceso='Anulacion',operacion=@operacion,actividad='Fabricación',
				estadio='Entrada'
				WHERE relacion=@coddetalle
			END
	END
