CREATE TABLE [dbo].[gesPedidoDetalle] (
    [CodDetalle]                     UNIQUEIDENTIFIER CONSTRAINT [DF_gesPedidoDetalle_CodDetalle] DEFAULT (newid()) ROWGUIDCOL NOT NULL,
    [CodPedido]                      UNIQUEIDENTIFIER NOT NULL,
    [CodArticulo]                    INT              NOT NULL,
    [CodCatalogo]                    INT              NULL,
    [Debe_haber]                     DECIMAL (18, 4)  NULL,
    [Tenemos]                        DECIMAL (18, 4)  NULL,
    [Pedimos]                        DECIMAL (18, 4)  NULL,
    [Pedido]                         DATETIME         NULL,
    [PresentacionUnidades]           DECIMAL (18, 4)  NULL,
    [PresentacionPrecio]             DECIMAL (18, 4)  NULL,
    [PresentacionFormatoPedido]      NVARCHAR (100)   NULL,
    [PresentacionFormatoEnvase]      NVARCHAR (100)   NULL,
    [PresentacionFormatoEmpaquetado] NVARCHAR (100)   NULL,
    [Recibido]                       DATETIME         NULL,
    [Recibi]                         BIT              NULL,
    [Pedido_por]                     VARCHAR (50)     NULL,
    [Recibido_por]                   VARCHAR (50)     NULL,
    [Precio]                         DECIMAL (18, 4)  NULL,
    [Subtotal]                       DECIMAL (18, 2)  NULL,
    [Descuento]                      DECIMAL (18, 4)  NULL,
    [IVA]                            DECIMAL (18, 2)  NULL,
    [Observaciones]                  NVARCHAR (200)   NULL,
    [Cajas]                          DECIMAL (18, 4)  NULL,
    CONSTRAINT [PK_gesPedidoDetalle] PRIMARY KEY CLUSTERED ([CodDetalle] ASC),
    CONSTRAINT [FK_gesPedidoDetalle_gesArticulo] FOREIGN KEY ([CodArticulo]) REFERENCES [dbo].[gesArticulo] ([CodArticulo]),
    CONSTRAINT [FK_gesPedidoDetalle_gesPedido] FOREIGN KEY ([CodPedido]) REFERENCES [dbo].[gesPedido] ([CodPedido])
);


GO
CREATE NONCLUSTERED INDEX [IDX_CodArticulo]
    ON [dbo].[gesPedidoDetalle]([CodArticulo] ASC) WITH (FILLFACTOR = 80, PAD_INDEX = ON);


GO
CREATE NONCLUSTERED INDEX [IDX_CodCatalogo]
    ON [dbo].[gesPedidoDetalle]([CodCatalogo] ASC) WITH (FILLFACTOR = 80, PAD_INDEX = ON);

