CREATE TABLE [dbo].[GesArticuloClaseConEscandallo] (
    [CodClaseHijo]  INT             NOT NULL,
    [CodClasePadre] INT             NOT NULL,
    [Codigo]        INT             IDENTITY (1, 1) NOT NULL,
    [Cantidad]      DECIMAL (18, 4) NULL,
    [CodMagnitud]   INT             NULL,
    [NRacion]       DECIMAL (18, 4) NULL,
    CONSTRAINT [PK_GesArticuloClaseConEscandallo] PRIMARY KEY CLUSTERED ([Codigo] ASC),
    CONSTRAINT [FK_GesArticuloClaseConEscandallo_gesArticuloClase] FOREIGN KEY ([CodClasePadre]) REFERENCES [dbo].[gesArticuloClase] ([CodClase])
);


GO
CREATE NONCLUSTERED INDEX [IDX_CodClaseHijo]
    ON [dbo].[GesArticuloClaseConEscandallo]([CodClaseHijo] ASC) WITH (FILLFACTOR = 80, PAD_INDEX = ON);


GO
CREATE NONCLUSTERED INDEX [IDX_CodClasePadre]
    ON [dbo].[GesArticuloClaseConEscandallo]([CodClasePadre] ASC) WITH (FILLFACTOR = 80, PAD_INDEX = ON);

