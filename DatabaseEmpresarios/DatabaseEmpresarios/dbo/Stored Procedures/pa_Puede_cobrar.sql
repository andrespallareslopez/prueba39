
CREATE PROCEDURE [dbo].[pa_Puede_cobrar] @Impresora varchar(100) AS
select abre_cajon from gesdispositivo where nombre=@impresora;
