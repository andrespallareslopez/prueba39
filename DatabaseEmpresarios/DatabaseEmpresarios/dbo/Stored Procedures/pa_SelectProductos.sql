
CREATE PROCEDURE pa_SelectProductos
@CadenaFiltro nvarchar(100),
@TipoConsulta int
 AS

--  0-Todos
--  1-ConEscandallo
--select @TipoConsulta=1
--select @CadenaFiltro='Tur'
--drop table #TempProductos
set nocount on
select * into #TempProductos from (
select CodGrupo,CodFamilia,CodProducto_Num,Descripcion,CodZona,Precio,Activo,
cast((case when (select count(*) from gesEscandallo_Num b where a.CodProducto_Num=b.codproducto_Num)>0 then 1 else 0 end) as bit) as TieneEscandallo 
from gesProducto_Num a ) Prd
set nocount off
if len(ltrim(@CadenaFiltro))=0
begin
if @TipoConsulta=0 select * from #TempProductos
if @TipoConsulta=1 Select * from #TempProductos where TieneEscandallo=1
end
else
begin
if @TipoConsulta=0 select * from #TempProductos where Descripcion like '%'+@CadenaFiltro+'%'
if @TipoConsulta=1 Select * from #TempProductos where TieneEscandallo=1 and  Descripcion like '%'+@CadenaFiltro+'%'
end
