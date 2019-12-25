CREATE TABLE [dbo].[gesFormatoPedido] (
    [CodFormatoPedido] INT           IDENTITY (1, 1) NOT NULL,
    [Descripcion]      VARCHAR (100) NULL,
    [Activo]           BIT           NULL,
    CONSTRAINT [PK_gesFormatoPedido] PRIMARY KEY CLUSTERED ([CodFormatoPedido] ASC)
);

