CREATE TABLE [dbo].[gesArticuloClase] (
    [CodClase]             INT             IDENTITY (1, 1) NOT NULL,
    [Descripcion]          VARCHAR (100)   NULL,
    [Activo]               BIT             NULL,
    [ConEscandallo]        BIT             NULL,
    [Cantidad]             DECIMAL (18, 4) NULL,
    [CodMagnitud]          INT             NULL,
    [DescontarExistencias] BIT             NULL,
    [NRacion]              DECIMAL (18, 4) NULL,
    [ParaPreparacion]      BIT             NULL,
    [ParaProducto]         BIT             NULL,
    [CalculoPorPeso]       BIT             NULL,
    [CalculoPorRacion]     BIT             NULL,
    CONSTRAINT [PK_gesArticuloClase] PRIMARY KEY CLUSTERED ([CodClase] ASC)
);

