
CREATE PROCEDURE dbo.pa_CompararFechasTablas
@Fecha datetime,
@Fecha1 datetime,
@N int,
@N1 int
 AS

declare @Comparar as bit
declare @Diferente as bit
--declare @Fecha as datetime
--declare @Fecha1 as datetime
--declare @N as int
--declare @N1 as int
set nocount on
select @Diferente=0
if @Fecha=@Fecha1 
begin
  if @N1<>@N 
    begin
      if @N>@N1 
        begin
            select @Diferente=1
        end
    end
    else
    begin
       select @Diferente=0
    end
end
set nocount off

select @Diferente as Diferente
