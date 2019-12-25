create procedure dbo.obtenergrupos as
select codgrupo,descripcion from gesgrupo where activo=1