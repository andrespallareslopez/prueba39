
CREATE PROCEDURE [dbo].[pa_factura_en_uso] @mesa char(50),@cliente varchar(100) AS
select estado,operador,dispositivo from gesfactura where mesa=@mesa and cliente=@cliente and estado='Abierta'
