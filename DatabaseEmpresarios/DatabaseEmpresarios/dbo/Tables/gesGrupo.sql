CREATE TABLE [dbo].[gesGrupo] (
    [CodGrupo]    INT           NOT NULL,
    [Descripcion] VARCHAR (100) NOT NULL,
    [Activo]      BIT           NOT NULL,
    CONSTRAINT [PK_gesGrupo] PRIMARY KEY CLUSTERED ([CodGrupo] ASC)
);

