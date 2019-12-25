
CREATE PROCEDURE [dbo].[pa_limpiar_cola] @codcola int AS
delete gescola where codcola=@codcola;
