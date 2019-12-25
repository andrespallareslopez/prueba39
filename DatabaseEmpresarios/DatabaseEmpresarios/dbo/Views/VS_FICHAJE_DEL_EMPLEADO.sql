
CREATE VIEW dbo.VS_FICHAJE_DEL_EMPLEADO
AS
SELECT     TOP 100 PERCENT e.Nombre + ' ' + e.Apellidos AS Empleado, CONVERT(char(15), f.Entrada, 3) AS Fecha, DATENAME(dw, f.Entrada) AS Dia, 
                      CONVERT(char(9), f.Entrada, 8) AS Entrada, CONVERT(char(9), f.Salida, 8) AS Salida, CAST(DATEDIFF(mi, f.Entrada, f.Salida) * 0.5 / 30 AS decimal(12, 2)) 
                      AS Horas, CAST(DATEDIFF(mi, f.Entrada, f.Salida) * 0.5 / 30 AS decimal(12, 2)) * 5.6 AS Sueldo
FROM         dbo.gesFichaje f INNER JOIN
                      dbo.gesTrabajador e ON f.CodTrabajador = e.CodTrabajador
WHERE     (f.CodTrabajador = 16) AND (f.Entrada BETWEEN '01/12/2007' AND '01/01/2008')
ORDER BY fecha, 'Entrada', 'Sueldo'



























