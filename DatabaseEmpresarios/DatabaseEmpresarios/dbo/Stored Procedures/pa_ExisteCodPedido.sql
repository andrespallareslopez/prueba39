
CREATE PROCEDURE pa_ExisteCodPedido
@CodPedido uniqueidentifier
 AS

declare @Codigo as int
declare @Valor as bit
set nocount on
select @Codigo=(select count(*)  from gespedido where codpedido=@Codpedido)
 
set @Valor=0

if @Codigo>0
begin
   select @Valor=1
end
set nocount off
select @Valor as valor
