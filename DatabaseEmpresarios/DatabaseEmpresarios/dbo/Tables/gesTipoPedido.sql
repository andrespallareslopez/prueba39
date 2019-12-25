CREATE TABLE [dbo].[gesTipoPedido] (
    [CodTipoPedido] INT            NOT NULL,
    [Descripcion]   NVARCHAR (255) NULL,
    CONSTRAINT [PK_gesTipoPedido] PRIMARY KEY CLUSTERED ([CodTipoPedido] ASC)
);

