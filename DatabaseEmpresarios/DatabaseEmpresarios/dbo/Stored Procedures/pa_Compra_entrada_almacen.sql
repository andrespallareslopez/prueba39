

CREATE PROCEDURE [dbo].[pa_Compra_entrada_almacen] @Tipo varchar(100),@desde datetime,@hasta datetime,@codarticulo int AS
if (@Tipo='Semanal')
	begin
		select pd.pedido as 'Dia',sum(pd.pedimos) as 'Entrado'
		from gespedidodetalle pd 
		inner join gespedido p on p.codpedido=pd.codpedido
		where pd.codarticulo=@codarticulo
		and datename(ww,pd.pedido)=datename(ww,@desde) 
		group by pd.pedido

	end
if (@Tipo='Mensual')
	begin
		select datename(ww,pd.pedido) as 'Semana',sum(pd.pedimos) as 'Entrado'
		from gespedidodetalle pd 
		inner join gespedido p on p.codpedido=pd.codpedido
		where pd.codarticulo=@codarticulo
		and month(pd.pedido)=month(@desde) and year(pd.pedido)=year(@desde)
		group by datename(ww,pd.pedido)

	end
