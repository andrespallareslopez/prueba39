CREATE FUNCTION obtenerCodActividad (@Detalle nvarchar(100),@CodActividad int)  
RETURNS int AS  
BEGIN 
Declare @Actividad as int

select @Actividad=(
 select case when @Detalle like 'TOTAL FACTURA:%' then 6
            when @Detalle like 'Efectivo%' then 6
            when @Detalle='Entrega Efectivo' then 6
            when @detalle like 'Entrega%' then 6
            when @Detalle like 'Factura%' then 6
            When @Detalle like 'Cambio%' then 6
            when @Detalle like 'Dto.%' then 6
            When @Detalle='Crédito' then 6
            When @Detalle like 'Tarjeta%' then 6
            when @detalle='Comida Empleado' then 6
            when @Detalle='Dinero Fam' then 6
            when @detalle like 'Cheque Gourmet%' then 6
            when @detalle like 'Cheque Bancario%' then 6
            when @detalle like 'Tique Restaurant%' then 6
            when @detalle like 'Dinero%' then 6
            when @detalle like '%(Corregido)%' and @detalle like '%Anulado%' then 7
            when @detalle like '%(Corregido)%' and @detalle like '%Anulacion%' then 7
            when @detalle like '%(Corregido)%' then 8
            else
              @CodActividad
            end as CodActividad)
return @Actividad
END


