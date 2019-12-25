
CREATE PROCEDURE [dbo].[pa_UltimaLineaTique] @CodFactura uniqueidentifier AS
select max(orden) from gesfactique where codfactura=@codfactura
