CREATE TABLE [dbo].[gesFormaPagoPedidos] (
    [CodFormaPago] INT            IDENTITY (1, 1) NOT NULL,
    [Descripcion]  NVARCHAR (100) NULL,
    CONSTRAINT [PK_gesFormaPagoPedidos] PRIMARY KEY CLUSTERED ([CodFormaPago] ASC)
);

