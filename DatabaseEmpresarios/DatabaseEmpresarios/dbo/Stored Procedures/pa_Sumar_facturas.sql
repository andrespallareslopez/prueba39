
CREATE PROCEDURE [dbo].[pa_Sumar_facturas] @Origen uniqueidentifier,@Destino uniqueidentifier,
@CodDispositivo int,@Dispositivo char(50),
@CodZona int,@Zona varchar(100),@CodTrabajador int,@Trabajador varchar(100),@Mesa int,@cliente varchar(100) AS

--SUMAR RELACIONES A OTRA FACTURA
update gesfactique set codfactura=@destino,mesa=@mesa,cliente=@cliente,activo=0
WHERE relacion in (select coddetalle from gesfactique where activo=1 and codfactura=@origen) ;


--SUMAR REGISTROS A OTRA FACTURA
update gesfactique set codfactura=@destino,mesa=@mesa,cliente=@cliente,activo=0
where codfactura=@origen and activo=1;
