
CREATE PROCEDURE pa_SelectEscandallosArticulo 

@CodProducto_Num as int,
@CodArticulo as int
AS

declare @TieneContenidoUnidad as int
declare @CodEscandallo as uniqueidentifier
declare @CodProducto as uniqueidentifier
declare @CodClase as int
declare @Cantidad as decimal
declare @CodMagnitud as int


set nocount on

--drop table #TempEscandallo
select * into #TempEscandallo from (select * from gesescandallo_Num where codproducto_Num in (select codproducto_num from gesproducto_Num where codproducto_Num=@CodProducto_Num) ) ll
--select * from #TempEscandallo

declare  Escandallo cursor for select * from #TempEscandallo

open Escandallo

fetch next from Escandallo into @CodEscandallo,@CodProducto,@CodClase,@Cantidad,@CodMagnitud,@CodProducto_Num

while @@Fetch_Status=0
begin
   if (select count(*) from getClaseArticulo(@CodClase))>1
   begin
      --print 'Mas de uno'
      --select * from getclaseArticulo(@CodClase)
     insert into #TempEscandallo 
      select newid() as CodEscandallo,@CodProducto as CodProducto,b.CodClaseHijo as CodClase,(case when (Select top 1 cantidad from gesArticuloClaseConEscandallo where CodClaseHijo=b.CodClasePadre and codclasePadre in (select * from getClaseArticulo(@CodClase))) is null then 1 
when (select Cantidad from gesArticuloclase where CodClase=b.CodClasePadre)=0 then 1
else 
(Select top 1 cantidad from gesArticuloClaseConEscandallo where CodClaseHijo=b.CodClasePadre and codclasePadre in (select * from getClaseArticulo(@CodClase)))/
(select Cantidad from gesArticuloclase where CodClase=b.CodClasePadre)
end)*Cantidad 
 as Cantidad,CodMagnitud,@CodProducto_Num as CodProducto_Num from getClaseArticulo(@CodClase) a join (select * from gesArticuloClaseConEscandallo where CodClasePadre in (select * from getClaseArticulo(@CodClase))) b on idclase=codClaseHijo
   end 
   fetch next from Escandallo into @CodEscandallo,@CodProducto,@CodClase,@Cantidad,@CodMagnitud,@CodProducto_Num
end
close Escandallo
deallocate Escandallo
--select * from #TempEscandallo
--select * from getClaseArticulo(116) gg
--select * into #TempEscandallo from (select * from gesescandallo_Num where codproducto_Num=@codproducto_Num ) ll
/*
ojo que por codclase es mas rapido que por codarticulo la busqueda en #TempArticulo
*/
--select * from #TempEscandallo
--drop table #TempArticulo
select * into #TempArticulo from (select * from gesArticulo where codclase in (select codClase from #tempEscandallo)) gh



--drop table #tempgespedidoDetalle
select * into #TempGesPedidoDetalle from (select * from gespedidodetalle where codarticulo in (select codarticulo from #temparticulo)) gk

--drop table #tempgesCatalogo
select * into #tempGesCatalogo from (select * from gesCatalogo where codarticulo in (select codarticulo from #temparticulo)) gl


--drop table #ConsPedidoArt
select * into #ConsPedidoArt from (
select codArticulo,max(Pedido) as fechapedido,
(select top 1 CodPedido from #tempgespedidodetalle b where b.codarticulo=a.codarticulo order by pedido desc) as CodPedido,
(select top 1 precio from #tempgespedidodetalle b where b.codarticulo=a.codarticulo order by pedido desc) as preciocompra,
(select top 1 precio from #tempgespedidodetalle b where b.codarticulo=a.codarticulo order by pedido desc) as PUC,
(select avg(Precio) from #TempGesPedidoDetalle b where b.codArticulo=a.CodArticulo) as PMC,
(select count(*) from #TempGesPedidoDetalle b where b.codArticulo=a.CodArticulo) as N,
(select top 1 SubTotal from #tempgespedidodetalle b where b.codarticulo=a.codarticulo order by pedido desc) as Importe_Compra,
(select top 1 pedimos from #tempgespedidodetalle b where b.codarticulo=a.codarticulo order by pedido desc) as cantidadpedida,
(select top 1 CodClase from #tempArticulo b where b.codarticulo=a.codarticulo order by codArticulo) as CodClase
 from #tempgespedidodetalle a group by a.codArticulo) dd


--drop table #ConsArt
select * into #ConsArt from (
select codClase,max(FechaPedido) as fecha,
(select codproveedor from gespedido b where b.codpedido=(select top 1 CodPedido from #ConsPedidoArt b where b.codclase=a.codclase order by  fechapedido desc)) as codproveedor,
(select top 1 precio from #tempgescatalogo b where b.codarticulo=(select top 1 CodArticulo from #ConsPedidoArt b where b.codclase=a.codclase order by  fechapedido desc)
and 
b.codproveedor=(select codproveedor from gespedido b where b.codpedido=(select top 1 CodPedido from #ConsPedidoArt b where b.codclase=a.codclase order by  fechapedido desc))
) as precioCompra,
(select top 1 Contenido_Unidad from #tempgescatalogo b where b.codarticulo=(select top 1 CodArticulo from #ConsPedidoArt b where b.codclase=a.codclase order by  fechapedido desc)
and 
b.codproveedor=(select codproveedor from gespedido b where b.codpedido=(select top 1 CodPedido from #ConsPedidoArt b where b.codclase=a.codclase order by  fechapedido desc))
) as ContenidoUnidad,
(select top 1 Contenido_Caja from #tempgescatalogo b where b.codarticulo=(select top 1 CodArticulo from #ConsPedidoArt b where b.codclase=a.codclase order by  fechapedido desc)
and
b.codproveedor=(select codproveedor from gespedido b where b.codpedido=(select top 1 CodPedido from #ConsPedidoArt b where b.codclase=a.codclase order by  fechapedido desc))
) as Contenido_Caja,
(select top 1 CodArticulo from #ConsPedidoArt b where b.codclase=a.codclase order by  fechapedido desc) as CodArticulo,
(select top 1 cantidadPedida from #ConsPedidoArt b where b.codclase=a.codclase order by  fechapedido desc) as CantidadPedida,
(select top 1 Importe_Compra from #ConsPedidoArt b where b.codclase=a.codclase order by  fechapedido desc) as Importe_Compra,
(select top 1 Importe from #tempgescatalogo b where b.codarticulo=(select top 1 CodArticulo from #ConsPedidoArt b where b.codclase=a.codclase order by  fechapedido desc)
and
b.codproveedor=(select codproveedor from gespedido b where b.codpedido=(select top 1 CodPedido from #ConsPedidoArt b where b.codclase=a.codclase order by  fechapedido desc))
) as Importe_Catalogo,
(select top 1 CodCatalogo from #tempgescatalogo b where b.codarticulo=(select top 1 CodArticulo from #ConsPedidoArt b where b.codclase=a.codclase   order by  fechapedido desc)
and 
b.codproveedor=(select codproveedor from gespedido b where b.codpedido=(select top 1 CodPedido from #ConsPedidoArt b where b.codclase=a.codclase order by  fechapedido desc))) as CodCatalogo,
(select top 1 preciocompra from #ConsPedidoArt b where b.codclase=a.codclase order by  fechapedido desc) as PrecioCoste
 from #ConsPedidoArt a group by a.codclase) kk
--

--drop table #ConsEsc
select * into #ConsEsc from (
select a.*,b.CodEscandallo,b.codproducto_num,b.cantidad,b.codmagnitud,
(select top 1 CodPedido from #tempgespedidodetalle b where b.codarticulo=a.codarticulo order by pedido desc) as CodPedido,
(select top 1 Descripcion from gesMagnitud c where c.CodMagnitud=b.codmagnitud ) as Magnitud,
(select top 1 Conversion from gesMagnitud c where c.CodMagnitud=b.codmagnitud ) as Conversion_Magnitud,
(select top 1 Tipo from gesMagnitud c where c.CodMagnitud=b.codmagnitud ) as TipoConversion
from #ConsArt a right join #tempEscandallo b on a.codclase=b.codclase) jj


set nocount off

--select * from #Consesc



select @TieneContenidoUnidad=(select count(*) from #ConsESc where  Contenidounidad=0)




if @TieneContenidoUnidad>0 

begin


--drop table #TempEscandallos
select * into #TempEscandallos from (
select a.*,
(select top 1 empresa from gesproveedores b where a.codproveedor=b.codproveedor ) as Proveedor,
(select descripcion from gesarticulo b where a.codarticulo=b.codarticulo) as NombreArticulo,
case  
when (select count(*) from #ConsEsc b where a.codproducto_Num=b.codproducto_Num and b.contenidounidad=0)>0 then 0 
when (select count(*) from #ConsEsc b where a.codproducto_Num=b.codproducto_Num and b.contenidounidad is null)>0 then 0
when (select count(*) from #ConsEsc b where a.codproducto_Num=b.codproducto_Num and b.contenidounidad=0)=0 then
((Cantidad/ContenidoUnidad)*Importe_Catalogo)
else 0 end as PrecioCosteCantidad,

(select case  when (select min(contenidounidad) from #ConsEsc c where c.codproducto_Num=a.codproducto_Num)= 0 then 0 
when (select min(contenidounidad) from #consEsc c where c.codproducto_Num=a.codproducto_Num) is null then 0
when (select min(contenidounidad) from #consEsc c where c.codproducto_Num=a.codproducto_Num)>0 then
(select sum(((Cantidad/ContenidoUnidad)*Importe_Catalogo)) from #ConsEsc c where c.codproducto_Num=a.codproducto_Num)
--(select min(contenidounidad) from #consEsc c where c.codproducto_Num=a.codproducto_Num)
else 0 end  from #ConsEsc b where b.codproducto_num=a.codproducto_num group by codproducto_num) as costeproducto,
case when (select count(*) from #ConsEsc b where b.codproducto_Num=a.codproducto_Num and b.cantidadpedida=0)>0 then 0 
when (select count(*) from #ConsEsc b where b.codproducto_Num=a.codproducto_Num and b.cantidadpedida is null)>0 then 0
when (select count(*) from #ConsEsc b where b.codproducto_Num=a.codproducto_Num and b.cantidadpedida=0)=0 then
(Importe_Compra/CantidadPedida) 
else 0 end  as Importe_Catalogo_Unidad,

(select top 1 precio from gesproducto_num b where b.Codproducto_num=a.codproducto_num) as precioVenta,
(select top 1 descripcion from gesproducto_num b where b.Codproducto_num=a.codproducto_num) as nombreproducto ,
(select PUC from #ConsPedidoArt b where a.codArticulo=b.codarticulo) as PUC,
(select PMC from #ConsPedidoArt b where a.codarticulo=b.codArticulo) as PMC,
(select N from #ConsPedidoArt b where a.codarticulo=b.codArticulo) as N
 from #ConsEsc a) esc



set nocount off
select * from #TempEscandallos where codarticulo=@CodArticulo and CodProducto_Num=@CodProducto_Num
end
else
begin
--drop table #TempEscandallos1
select * into #TempEscandallos1 from (
select a.*,
(select top 1 empresa from gesproveedores b where a.codproveedor=b.codproveedor ) as Proveedor,
(select descripcion from gesarticulo b where a.codarticulo=b.codarticulo) as NombreArticulo,
case  
when contenidounidad=0 then 0 
when contenidounidad is null then 0
else ((Cantidad/ContenidoUnidad)*Importe_Catalogo) end as PrecioCosteCantidad,
(select case  when sum(contenidounidad)= 0 then 0 
when sum(contenidounidad) is null then 0
else sum(((Cantidad/ContenidoUnidad)*Importe_Catalogo)) end  from #ConsEsc b where b.codproducto_num=a.codproducto_num group by codproducto_num) as costeproducto,
case when cantidadpedida= 0 then 0 
when cantidadpedida is null then 0
else (Importe_Compra/CantidadPedida) end  as Importe_Catalogo_Unidad,
(select top 1 precio from gesproducto_num b where b.Codproducto_num=a.codproducto_num) as precioVenta,
(select top 1 descripcion from gesproducto_num b where b.Codproducto_num=a.codproducto_num) as nombreproducto, 
(select PUC from #ConsPedidoArt b where a.codArticulo=b.codarticulo) as PUC,
(select PMC from #ConsPedidoArt b where a.codarticulo=b.codArticulo) as PMC,
(select N from #ConsPedidoArt b where a.codarticulo=b.codArticulo) as N
 from #ConsEsc a ) Esc1
set nocount off

select * from #TempEscandallos1 where CodArticulo=@CodArticulo and CodProducto_Num=@CodProducto_Num
end