
CREATE PROCEDURE pa_SelectArticulosClase
@CadenaFiltro nvarchar(100),
@TieneArticulos bit=Null,
@TieneProductos bit=Null
 AS

--select @CadenaFiltro=''
--select @TieneArticulos=0
--Select @TieneProductos=1

set nocount on
--drop Table #TempClaseArticulos
select * into #TempClaseArticulos from (
select CodClase,Descripcion,Activo,
case when (Select Count(*) from gesArticulo b where b.codClase=a.codClase)>0 then 1 else 0 end as TieneArticulos,
case when (select count(*) from gesProducto_Num b join (select CodProducto_Num,CodClase from gesEscandallo_Num d where d.CodClase=a.codclase) c on b.codproducto_Num=c.CodProducto_Num)>0 then 1 else 0 end as TieneProductos,
(Select Count(*) from gesArticulo b where b.codClase=a.codClase) as NArt,
(select count(*) from gesProducto_Num b join (select CodProducto_Num,CodClase from gesEscandallo_Num d where d.CodClase=a.codclase) c on b.codproducto_Num=c.CodProducto_Num) as NProd
from gesArticuloClase a ) Cla
set nocount off

if @Cadenafiltro is null or len(LTrim(@CadenaFiltro))=0
begin
if (@TieneProductos is null and @TieneArticulos is null) select * from #TempClaseArticulos 
if (not @TieneProductos is null and not @TieneArticulos is null) select * from #TempClaseArticulos where TieneArticulos=@TieneArticulos and TieneProductos=@TieneProductos
if (not @TieneProductos is null and @TieneArticulos is null)  select * from #TempClaseArticulos where (TieneProductos=@TieneProductos)
if (@TieneProductos is null and not @TieneArticulos is null)  select * from #TempClaseArticulos where (TieneArticulos=@TieneArticulos)
end
else
begin
if (@TieneProductos is null and @TieneArticulos is null) select * from #TempClaseArticulos where Descripcion like '%'+@CadenaFiltro+'%'  
if (not @TieneProductos is null and not @TieneArticulos is null) select * from #TempClaseArticulos where (TieneArticulos=@TieneArticulos and TieneProductos=@TieneProductos) and Descripcion like '%'+@CadenaFiltro+'%'
if (not @TieneProductos is null and @TieneArticulos is null)  select * from #TempClaseArticulos where (TieneProductos=@TieneProductos) and Descripcion like '%'+@CadenaFiltro+'%' 
if (@TieneProductos is null and not @TieneArticulos is null)  select * from #TempClaseArticulos where (TieneArticulos=@TieneArticulos) and Descripcion like '%'+@CadenaFiltro+'%' 
end