
CREATE PROCEDURE [dbo].[pa_ImporteDetalle] @CodFactura uniqueidentifier AS
select sum(subtotal) from gesfactique where codfactura=@codfactura and suceso='Detalle'
