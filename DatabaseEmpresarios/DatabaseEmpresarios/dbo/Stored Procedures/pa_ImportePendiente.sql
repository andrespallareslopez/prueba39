
CREATE PROCEDURE [dbo].[pa_ImportePendiente] @CodFactura uniqueidentifier AS
select ((select  sum(subtotal) from gesfactique where suceso='Detalle' and operacion='Boleta' and codfactura=@codfactura) -
(select  sum(subtotal) from gesfactique where suceso='Cobro' and operacion='Arqueo' and codfactura=@codfactura)) as Cantidad;
