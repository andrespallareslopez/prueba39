
CREATE PROCEDURE [dbo].[pa_Factura_se_detecto_abierta] @codfactura uniqueidentifier AS
select estado,operador,dispositivo from gesfactura where codfactura=@codfactura
