CREATE TABLE [dbo].[gesArqueoDetalle] (
    [CodDetalle] UNIQUEIDENTIFIER NOT NULL,
    [CodArqueo]  UNIQUEIDENTIFIER NULL,
    [Realidad]   VARCHAR (100)    NULL,
    [Contado]    DECIMAL (18, 2)  NULL,
    [Registro]   VARCHAR (100)    NULL,
    [Vendido]    DECIMAL (18, 2)  NULL,
    [Diferencia] DECIMAL (18, 2)  NULL,
    [Periodo]    INT              NULL,
    CONSTRAINT [PK_gesArqueoDetalle] PRIMARY KEY CLUSTERED ([CodDetalle] ASC),
    CONSTRAINT [FK_gesArqueoDetalle_gesArqueo] FOREIGN KEY ([CodArqueo]) REFERENCES [dbo].[gesArqueo] ([CodArqueo])
);

