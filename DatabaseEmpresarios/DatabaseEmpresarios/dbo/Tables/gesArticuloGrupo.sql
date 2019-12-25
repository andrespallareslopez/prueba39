CREATE TABLE [dbo].[gesArticuloGrupo] (
    [CodGrupo]    INT       NOT NULL,
    [Descripcion] CHAR (50) NULL,
    [Activo]      BIT       NULL,
    CONSTRAINT [PK_gesArticuloGrupo] PRIMARY KEY CLUSTERED ([CodGrupo] ASC)
);

