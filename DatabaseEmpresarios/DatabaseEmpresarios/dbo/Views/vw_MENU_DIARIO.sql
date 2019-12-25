
CREATE VIEW dbo.vw_MENU_DIARIO
AS
SELECT     Descripcion
FROM         dbo.gesProducto_Num
WHERE     (Activo = 1) AND (CodFamilia = 145 OR
                      CodFamilia = 154)

