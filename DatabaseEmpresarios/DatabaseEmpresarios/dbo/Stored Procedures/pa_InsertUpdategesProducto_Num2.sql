

CREATE PROCEDURE [dbo].[pa_InsertUpdategesProducto_Num2]
	@CodProducto uniqueidentifier,
	@Descripcion varchar(100),
	@Activo bit,
	@Precio decimal(18, 2),
	@CodGrupo int,
	@CodFamilia int,
	@CodZona int,
	@CodProducto_Num int
AS

SET NOCOUNT ON

IF EXISTS(SELECT [CodProducto_Num] FROM [dbo].[gesProducto_Num] WHERE [CodProducto] = @CodProducto)
BEGIN
	UPDATE [dbo].[gesProducto_Num] SET
		[Descripcion] = @Descripcion,
		[Activo] = @Activo,
		[Precio] = @Precio,
		[CodGrupo] = @CodGrupo,
		[CodFamilia] = @CodFamilia,
		[CodZona] = @CodZona
	WHERE
		[CodProducto] = @CodProducto
END
ELSE
BEGIN
	INSERT INTO [dbo].[gesProducto_Num] (
		[CodProducto],
		[Descripcion],
		[Activo],
		[Precio],
		[CodGrupo],
		[CodFamilia],
		[CodZona]
	) VALUES (
		@CodProducto,
		@Descripcion,
		@Activo,
		@Precio,
		@CodGrupo,
		@CodFamilia,
		@CodZona
	)
END

--endregion
