CREATE TABLE [dbo].[gesCobro] (
    [CodCobro]    INT           IDENTITY (1, 1) NOT NULL,
    [Descripcion] VARCHAR (100) NOT NULL,
    [Activo]      BIT           NULL,
    [Devolucion]  BIT           NULL,
    [Periodo]     INT           NULL,
    CONSTRAINT [PK_gesCobro] PRIMARY KEY CLUSTERED ([CodCobro] ASC)
);

