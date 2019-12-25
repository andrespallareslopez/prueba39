
CREATE PROCEDURE [dbo].[pa_tipo_impresora] @Tipo char(20) AS

if @tipo='Tique'
	begin
		select nombre,tipo,'Tique' as Clase from gesdispositivo where imprime_tique=1;
	end
else
if @tipo='Factura'
	begin
		select nombre,tipo,'Factura' as Clase from gesdispositivo where imprime_factura=1;
	end
else
if @tipo='Cajon'
	begin
		select nombre,tipo,'Cajon' as Clase from gesdispositivo where abre_cajon=1;
	end
else
if @tipo='Comanda'
	begin
		select nombre,tipo,'Comanda' as Clase from gesdispositivo where imprime_comanda=1;
	end
