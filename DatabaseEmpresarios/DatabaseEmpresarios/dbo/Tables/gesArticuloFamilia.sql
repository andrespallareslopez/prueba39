CREATE TABLE [dbo].[gesArticuloFamilia] (
    [CodFamilia]  INT       NOT NULL,
    [Descripcion] CHAR (50) NULL,
    [Activo]      BIT       NULL,
    [CodGrupo]    INT       NULL,
    CONSTRAINT [PK_gesArticuloFamilia] PRIMARY KEY CLUSTERED ([CodFamilia] ASC),
    CONSTRAINT [FK_gesArticuloFamilia_gesArticuloGrupo] FOREIGN KEY ([CodGrupo]) REFERENCES [dbo].[gesArticuloGrupo] ([CodGrupo])
);

