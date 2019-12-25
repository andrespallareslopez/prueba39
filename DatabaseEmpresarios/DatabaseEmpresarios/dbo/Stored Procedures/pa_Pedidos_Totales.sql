

CREATE PROCEDURE [dbo].[pa_Pedidos_Totales] @Tipo char(20),@Desde datetime,@Hasta datetime,@CodProveedor int AS
IF (@Tipo='ANUAL')
	BEGIN
		SELECT sum(total_pedido) FROM gesPedido
		WHERE year(pedido)=year(@Desde) AND codproveedor=@codproveedor
	END
IF (@Tipo='MENSUAL')
	BEGIN
		SELECT sum(Total_pedido) FROM gesPedido
		WHERE year(pedido)=year(@desde) AND month(pedido)=month(@desde) AND codproveedor=@codproveedor
	END
IF (@Tipo='SEMANAL')
	BEGIN
		SELECT sum(Total_pedido) FROM gespedido
		WHERE year(pedido)=year(@desde) AND datepart(week,pedido)=datepart(week,@desde) AND codproveedor=@codproveedor
	END

