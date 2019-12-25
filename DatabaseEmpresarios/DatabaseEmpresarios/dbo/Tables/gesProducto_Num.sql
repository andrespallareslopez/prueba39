CREATE TABLE [dbo].[gesProducto_Num] (
    [CodProducto]     UNIQUEIDENTIFIER NULL,
    [CodGrupo]        INT              NULL,
    [CodFamilia]      INT              NULL,
    [CodZona]         INT              NULL,
    [CodProducto_Num] INT              NOT NULL,
    [Descripcion]     VARCHAR (100)    NOT NULL,
    [Activo]          BIT              NOT NULL,
    [Precio]          DECIMAL (18, 2)  NULL,
    [ConEscandallo]   BIT              NULL,
    CONSTRAINT [PK_gesProducto_Num] PRIMARY KEY CLUSTERED ([CodProducto_Num] ASC),
    CONSTRAINT [FK_gesProducto_Num_gesFamilia] FOREIGN KEY ([CodFamilia]) REFERENCES [dbo].[gesFamilia] ([CodFamilia]),
    CONSTRAINT [FK_gesProducto_Num_gesGrupo] FOREIGN KEY ([CodGrupo]) REFERENCES [dbo].[gesGrupo] ([CodGrupo])
);


GO
CREATE NONCLUSTERED INDEX [IDX_CodGrupo]
    ON [dbo].[gesProducto_Num]([CodGrupo] ASC) WITH (FILLFACTOR = 80, PAD_INDEX = ON);


GO
CREATE NONCLUSTERED INDEX [IDX_CodFamilia]
    ON [dbo].[gesProducto_Num]([CodFamilia] ASC) WITH (FILLFACTOR = 80, PAD_INDEX = ON);


GO
CREATE NONCLUSTERED INDEX [IDX_CodZona]
    ON [dbo].[gesProducto_Num]([CodZona] ASC) WITH (FILLFACTOR = 80, PAD_INDEX = ON);


GO
CREATE NONCLUSTERED INDEX [IDX_CodProducto_Num]
    ON [dbo].[gesProducto_Num]([CodProducto_Num] ASC) WITH (FILLFACTOR = 80, PAD_INDEX = ON);


GO
CREATE NONCLUSTERED INDEX [IDX_Grupo_Familia]
    ON [dbo].[gesProducto_Num]([CodGrupo] ASC, [CodFamilia] ASC) WITH (FILLFACTOR = 80, PAD_INDEX = ON);

