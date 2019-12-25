CREATE FUNCTION getClaseArticulo (@IDClase int)  
RETURNS @retClaseArticulo Table (IdClase int) AS  
BEGIN 
Declare @IDClaseArticulo as  int
declare ClaseArticulos cursor STATIC LOCAL for 
Select  CodClaseHijo from gesArticuloClaseConEscandallo where CodClasePadre=@IDClase

insert into @retClaseArticulo Values (@IDClase)

Open ClaseArticulos

Fetch Next From ClaseArticulos into @IDClaseArticulo

While @@Fetch_Status=0
begin
     Insert into @retClaseArticulo select * from getClaseArticulo(@IDClaseArticulo)
     
     Fetch Next From ClaseArticulos into @IDClaseArticulo
end
Close ClaseArticulos
Deallocate ClaseArticulos

return
END