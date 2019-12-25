CREATE TABLE [dbo].[gesEscandallo] (
    [CodEscandallo] UNIQUEIDENTIFIER ROWGUIDCOL NOT NULL,
    [CodProducto]   UNIQUEIDENTIFIER NULL,
    [CodClase]      INT              NULL,
    [Clase]         VARCHAR (100)    NULL,
    [Cantidad]      DECIMAL (18, 4)  NULL,
    [CodMagnitud]   INT              NULL,
    CONSTRAINT [PK_gesEscandallo] PRIMARY KEY CLUSTERED ([CodEscandallo] ASC)
);

