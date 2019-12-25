CREATE TABLE [dbo].[gesEscandallo_Num] (
    [CodEscandallo]   UNIQUEIDENTIFIER CONSTRAINT [DF_gesEscandallo_Num_CodEscandallo] DEFAULT (newid()) ROWGUIDCOL NOT NULL,
    [CodProducto]     UNIQUEIDENTIFIER NULL,
    [CodClase]        INT              NULL,
    [Cantidad]        DECIMAL (18, 4)  NULL,
    [CodMagnitud]     INT              NULL,
    [CodProducto_Num] INT              NOT NULL,
    CONSTRAINT [PK_gesEscandallo_Num] PRIMARY KEY CLUSTERED ([CodEscandallo] ASC),
    CONSTRAINT [FK_gesEscandallo_Num_gesArticuloClase] FOREIGN KEY ([CodClase]) REFERENCES [dbo].[gesArticuloClase] ([CodClase]),
    CONSTRAINT [FK_gesEscandallo_Num_gesMagnitud] FOREIGN KEY ([CodMagnitud]) REFERENCES [dbo].[gesMagnitud] ([CodMagnitud])
);


GO
CREATE NONCLUSTERED INDEX [IDX_CodProducto_Num]
    ON [dbo].[gesEscandallo_Num]([CodProducto_Num] ASC) WITH (FILLFACTOR = 80, PAD_INDEX = ON);


GO
CREATE NONCLUSTERED INDEX [IDX_CodMagnitud]
    ON [dbo].[gesEscandallo_Num]([CodMagnitud] ASC) WITH (FILLFACTOR = 80, PAD_INDEX = ON);


GO
CREATE NONCLUSTERED INDEX [IDX_CodClase]
    ON [dbo].[gesEscandallo_Num]([CodClase] ASC) WITH (FILLFACTOR = 80, PAD_INDEX = ON);

