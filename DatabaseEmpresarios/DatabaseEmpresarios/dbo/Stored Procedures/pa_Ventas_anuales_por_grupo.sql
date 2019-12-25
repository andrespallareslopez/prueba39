

CREATE PROCEDURE [dbo].[pa_Ventas_anuales_por_grupo] @Año int AS

DECLARE @Columnas nvarchar(50);
DECLARE @Exec1 nvarchar(1024);
declare @exec2 nvarchar(1024);

--CREACIÓN TABLA REGISTROS

IF EXISTS(SELECT * FROM dbo.sysobjects where id=object_id(N'[dbo].[Tabla_registros_ventas]') 
AND OBJECTPROPERTY(id,N'IsTable')=1)

drop table dbo.Tabla_registros_ventas

create table Tabla_registros_ventas (detallado nvarchar(100) null, mes nvarchar(2) null, 
importe decimal(18,2) null)

--INSERCION DE REGISTROS

declare @texto nvarchar(1024)
declare @año_string varchar(10);
set @año_string = cast(@año as varchar(10))

set @texto ='insert into Tabla_registros_ventas 
(detallado ,mes, importe)
SELECT grupo,month(fecha),sum(subtotal)
from geshistoricofactique' + @año_string + 
' where year(fecha)=' + @año_string +
' group by grupo , month(fecha)'
execute (@texto)

--CREACION TABLA RESULTADOS

IF EXISTS(SELECT * FROM dbo.sysobjects where id=object_id(N'[dbo].[Tabla_resultados_ventas]') 
AND OBJECTPROPERTY(id,N'IsTable')=1)

drop table dbo.Tabla_resultados_ventas

create table Tabla_resultados_ventas (detallado nvarchar(100) null)

-- INSERCION DE RESULTADOS

INSERT INTO Tabla_resultados_ventas (detallado)
select distinct detallado from Tabla_registros_ventas

--DECLARACION DEL CURSOR

DECLARE encabezados cursor for
select distinct mes from Tabla_registros_ventas

open encabezados

fetch next from encabezados into @columnas
while @@fetch_status=0
	begin
		set @exec1 = 'alter table Tabla_resultados_ventas add [' + @columnas + '] decimal(18,2) null'
		execute (@exec1)
		set @exec2 = 'update Tabla_resultados_ventas set [' + @columnas + '] = t1.importe ' +
		'from Tabla_registros_ventas t1 inner join Tabla_resultados_ventas t2 ' +
		'on t1.detallado=t2.detallado where t1.mes=''' + @columnas + '''';
		execute (@exec2)

		fetch next from encabezados into @columnas
	end
close encabezados
deallocate encabezados

--TOTALES POR FILA

IF EXISTS(SELECT * FROM dbo.sysobjects where id=object_id(N'[dbo].[Totales_venta_por_grupo]') 
AND OBJECTPROPERTY(id,N'IsTable')=1)

drop table dbo.Totales_venta_por_grupo
create table Totales_venta_por_grupo (detallado nvarchar(100) null, total decimal(18,2) null)

insert into Totales_venta_por_grupo (detallado,total)
select detallado,sum(importe) as subtotal 
from Tabla_registros_ventas
group by detallado

--AGREGAR COLUMNA DE TOTALES

alter table Tabla_resultados_ventas add total decimal(18,2) null
declare @exec3 nvarchar(1024);

set @exec3= 'update Tabla_resultados_ventas set total=t3.total from Tabla_resultados_ventas t2 ' +
'inner join Totales_venta_por_grupo t3 on t2.detallado=t3.detallado'

execute (@exec3)

--MOSTRAR VISTA

SELECT * FROM Tabla_resultados_ventas

