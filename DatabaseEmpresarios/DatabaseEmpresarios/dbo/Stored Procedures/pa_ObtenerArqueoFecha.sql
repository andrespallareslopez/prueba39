
CREATE PROCEDURE pa_ObtenerArqueoFecha @Fecha datetime AS


select 'Periodo' = case 
when fecha between dateadd(hour,6,@fecha) and dateadd(hour,14,@fecha) then 'Desayuno'
when fecha between dateadd(hour,14,@fecha) and dateadd(hour,19,@fecha) then 'Comida'
when fecha between dateadd(hour,19,@fecha) and dateadd(hour,27,@fecha) then 'Cena'
end
 ,detalle,sum(subtotal) as 'Total' 
--from gesfactique
from gesfactique_num
where suceso='Cobro' and operacion='arqueo' and fecha between dateadd(hour,6,@fecha) and dateadd(hour,27,@fecha)
group by detalle,case 
when fecha between dateadd(hour,6,@fecha) and dateadd(hour,14,@fecha) then 'Desayuno'
when fecha between dateadd(hour,14,@fecha) and dateadd(hour,19,@fecha) then 'Comida'
when fecha between dateadd(hour,19,@fecha) and dateadd(hour,27,@fecha) then 'Cena'
end
order by 'Periodo' 
compute sum(sum(subtotal))
