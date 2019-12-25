
CREATE PROCEDURE dbo.pa_Traspaso_gesFactura_a_gesFact @desde datetime,@hasta datetime
AS
IF EXISTS 
(
		SELECT * FROM geshistoricofactura2010
		WHERE cobrada BETWEEN @desde AND @hasta
)


--DESAYUNO--
INSERT gesfact2010
		SELECT 
		codfactura,
		abierta,
		cobrada,
		1.80,
		mesa,
		1,
		codcliente,
		codtrabajador,
		estado,
		codlocal,
		numero,
		cliente,
		codperiodo,
		periodo,
		operador,
		dispositivo
		FROM geshistoricofactura2010
		WHERE cobrada BETWEEN @desde AND @hasta and
		(datepart(mi,cobrada)%2)=0 
		and datepart(hour,cobrada) between 7 and 10
		and facturada is null and importe >1.80;
INSERT gesfact2010
		SELECT 
		codfactura,
		abierta,
		cobrada,
		1,
		mesa,
		1,
		codcliente,
		codtrabajador,
		estado,
		codlocal,
		numero,
		cliente,
		codperiodo,
		periodo,
		operador,
		dispositivo
		FROM geshistoricofactura2010
		WHERE cobrada BETWEEN @desde AND @hasta and
		(datepart(mi,cobrada)%2)>0 
		and datepart(hour,cobrada) between 7 and 10
		and facturada is null and importe >0.90;
INSERT gesfact2010
		SELECT 
		codfactura,
		abierta,
		cobrada,
		importe,
		mesa,
		pax,
		codcliente,
		codtrabajador,
		estado,
		codlocal,
		numero,
		cliente,
		codperiodo,
		periodo,
		operador,
		dispositivo
		FROM geshistoricofactura2010
		WHERE cobrada BETWEEN @desde AND @hasta and
		datepart(hour,cobrada) between 7 and 10
		and facturada is not null;

--ALMUERZO--
INSERT gesfact2010
		SELECT 
		codfactura,
		abierta,
		cobrada,
		1.85,
		mesa,
		1,
		codcliente,
		codtrabajador,
		estado,
		codlocal,
		numero,
		cliente,
		codperiodo,
		periodo,
		operador,
		dispositivo
		FROM geshistoricofactura2010
		WHERE cobrada BETWEEN @desde AND @hasta and
		(datepart(mi,cobrada)%2)=0 
		and datepart(hour,cobrada) between 11 and 13
		and facturada is null and importe >1.85;
INSERT gesfact2010
		SELECT 
		codfactura,
		abierta,
		cobrada,
		1.80,
		mesa,
		1,
		codcliente,
		codtrabajador,
		estado,
		codlocal,
		numero,
		cliente,
		codperiodo,
		periodo,
		operador,
		dispositivo
		FROM geshistoricofactura2010
		WHERE cobrada BETWEEN @desde AND @hasta and
		(datepart(mi,cobrada)%2)>0 
		and datepart(hour,cobrada) between 11 and 13
		and facturada is null and importe >0.90;
INSERT gesfact2010
		SELECT 
		codfactura,
		abierta,
		cobrada,
		importe,
		mesa,
		pax,
		codcliente,
		codtrabajador,
		estado,
		codlocal,
		numero,
		cliente,
		codperiodo,
		periodo,
		operador,
		dispositivo
		FROM geshistoricofactura2010
		WHERE cobrada BETWEEN @desde AND @hasta and
		datepart(hour,cobrada) between 11 and 13
		and facturada is not null;
--COMIDA--
INSERT gesfact2010
		SELECT 
		codfactura,
		abierta,
		cobrada,
		8,
		mesa,
		1,
		codcliente,
		codtrabajador,
		estado,
		codlocal,
		numero,
		cliente,
		codperiodo,
		periodo,
		operador,
		dispositivo
		FROM geshistoricofactura2010
		WHERE cobrada BETWEEN @desde AND @hasta and
		(datepart(mi,cobrada)%2)=0 
		and datepart(hour,cobrada) between 14 and 18
		and facturada is null and importe >8;
INSERT gesfact2010
		SELECT 
		codfactura,
		abierta,
		cobrada,
		1.85,
		mesa,
		1,
		codcliente,
		codtrabajador,
		estado,
		codlocal,
		numero,
		cliente,
		codperiodo,
		periodo,
		operador,
		dispositivo
		FROM geshistoricofactura2010
		WHERE cobrada BETWEEN @desde AND @hasta and
		(datepart(mi,cobrada)%2)>0 
		and datepart(hour,cobrada) between 14 and 18
		and facturada is null and importe >1.85;
INSERT gesfact2010
		SELECT 
		codfactura,
		abierta,
		cobrada,
		importe,
		mesa,
		pax,
		codcliente,
		codtrabajador,
		estado,
		codlocal,
		numero,
		cliente,
		codperiodo,
		periodo,
		operador,
		dispositivo
		FROM geshistoricofactura2010
		WHERE cobrada BETWEEN @desde AND @hasta and
		datepart(hour,cobrada) between 14 and 18
		and facturada is not null;
--CENA--
INSERT gesfact2010
		SELECT 
		codfactura,
		abierta,
		cobrada,
		1,
		mesa,
		1,
		codcliente,
		codtrabajador,
		estado,
		codlocal,
		numero,
		cliente,
		codperiodo,
		periodo,
		operador,
		dispositivo
		FROM geshistoricofactura2010
		WHERE cobrada BETWEEN @desde AND @hasta and
		(datepart(mi,cobrada)%2)=0 
		and ((datepart(hour,cobrada)  between 0 and 4)
or
(datepart(hour,cobrada) between 19 and 27))
		and facturada is null and importe >1;
INSERT gesfact2010
		SELECT 
		codfactura,
		abierta,
		cobrada,
		1.85,
		mesa,
		1,
		codcliente,
		codtrabajador,
		estado,
		codlocal,
		numero,
		cliente,
		codperiodo,
		periodo,
		operador,
		dispositivo
		FROM geshistoricofactura2010
		WHERE cobrada BETWEEN @desde AND @hasta and
		(datepart(mi,cobrada)%2)>0 
		and ((datepart(hour,cobrada)  between 0 and 4)
or
(datepart(hour,cobrada) between 19 and 27))
		and facturada is null and importe >1.85;
INSERT gesfact2010
		SELECT 
		codfactura,
		abierta,
		cobrada,
		importe,
		mesa,
		pax,
		codcliente,
		codtrabajador,
		estado,
		codlocal,
		numero,
		cliente,
		codperiodo,
		periodo,
		operador,
		dispositivo
		FROM geshistoricofactura2010
		WHERE cobrada BETWEEN @desde AND @hasta and
		((datepart(hour,cobrada)  between 0 and 4)
or
(datepart(hour,cobrada) between 19 and 27))
		and facturada is not null;


