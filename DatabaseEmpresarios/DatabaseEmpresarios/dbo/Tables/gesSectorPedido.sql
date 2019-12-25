CREATE TABLE [dbo].[gesSectorPedido] (
    [CodSectorPedido] INT           IDENTITY (1, 1) NOT NULL,
    [Descripcion]     VARCHAR (100) NULL,
    [Activo]          BIT           NULL,
    CONSTRAINT [PK_gesSectorPedido] PRIMARY KEY CLUSTERED ([CodSectorPedido] ASC)
);

