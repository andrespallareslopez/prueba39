CREATE TABLE [dbo].[gesFamilia] (
    [CodFamilia]  INT           NOT NULL,
    [Descripcion] VARCHAR (100) NULL,
    [CodGrupo]    INT           NULL,
    [Activa]      BIT           NOT NULL,
    [CodZona]     INT           NULL,
    CONSTRAINT [PK_gesFamilia] PRIMARY KEY CLUSTERED ([CodFamilia] ASC),
    CONSTRAINT [FK_gesFamilia_gesGrupo] FOREIGN KEY ([CodGrupo]) REFERENCES [dbo].[gesGrupo] ([CodGrupo]),
    CONSTRAINT [FK_gesFamilia_gesZonas] FOREIGN KEY ([CodZona]) REFERENCES [dbo].[gesZonas] ([CodZona])
);

