
CREATE PROCEDURE [dbo].[pa_ObtenerFechas] @Fecha datetime AS
set nocount off
--select @Fecha1='01/01/2011'
--drop table #Fechas1
select * into #Fechas1 from (select dateadd(dd,numero,'01/01/'+ltrim(str(year(@Fecha)))) as fecha from temp365 union select @Fecha) a
set nocount on
select * from #Fechas1 order by fecha
