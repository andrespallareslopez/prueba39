CREATE TABLE [dbo].[ConsPedidoArt] (
    [CodArticulo]    INT              NOT NULL,
    [FechaPedido]    DATETIME         NULL,
    [CodProveedor]   INT              NULL,
    [CodCatalogo]    INT              NULL,
    [CodPedido]      UNIQUEIDENTIFIER NULL,
    [PrecioCompra]   DECIMAL (18, 4)  NULL,
    [PUC]            DECIMAL (18, 4)  NULL,
    [PMC]            DECIMAL (18, 4)  NULL,
    [N]              INT              NULL,
    [Importe_Compra] DECIMAL (18, 4)  NULL,
    [CantidadPedida] DECIMAL (18, 4)  NULL,
    [CodClase]       INT              NULL,
    CONSTRAINT [PK_ConsPedidoArt] PRIMARY KEY CLUSTERED ([CodArticulo] ASC),
    CONSTRAINT [FK_ConsPedidoArt_gesArticulo] FOREIGN KEY ([CodArticulo]) REFERENCES [dbo].[gesArticulo] ([CodArticulo])
);


GO
CREATE NONCLUSTERED INDEX [IDX_CodProveedor]
    ON [dbo].[ConsPedidoArt]([CodProveedor] DESC) WITH (FILLFACTOR = 80, PAD_INDEX = ON);


GO
CREATE NONCLUSTERED INDEX [IDX_CodClase]
    ON [dbo].[ConsPedidoArt]([CodClase] DESC) WITH (FILLFACTOR = 80, PAD_INDEX = ON);


GO
CREATE NONCLUSTERED INDEX [IDX_CodCatalogo]
    ON [dbo].[ConsPedidoArt]([CodCatalogo] ASC) WITH (FILLFACTOR = 80, PAD_INDEX = ON);


GO
CREATE NONCLUSTERED INDEX [IDX_CodPedido]
    ON [dbo].[ConsPedidoArt]([CodPedido] ASC) WITH (FILLFACTOR = 80, PAD_INDEX = ON);

