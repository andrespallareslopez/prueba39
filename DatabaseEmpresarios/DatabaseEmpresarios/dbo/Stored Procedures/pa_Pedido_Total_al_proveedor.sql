
CREATE PROCEDURE [dbo].[pa_Pedido_Total_al_proveedor] @codproveedor int,@desde datetime,@hasta datetime AS
SELECT Pedido,Recibido,Pagado,Total
from gespedido
where pedido between @desde and @hasta
and codproveedor=@codproveedor
order by pedido;
