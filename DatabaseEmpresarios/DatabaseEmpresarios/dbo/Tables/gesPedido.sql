CREATE TABLE [dbo].[gesPedido] (
    [CodPedido]      UNIQUEIDENTIFIER CONSTRAINT [DF_gesPedido_CodPedido] DEFAULT (newid()) ROWGUIDCOL NOT NULL,
    [CodProveedor]   INT              NOT NULL,
    [CodTrabajador]  INT              NULL,
    [Pedido]         DATETIME         NULL,
    [Recibido]       DATETIME         NULL,
    [Facturado]      DATETIME         NULL,
    [Pagado]         DATETIME         NULL,
    [Telefono]       CHAR (15)        NULL,
    [Orden]          INT              IDENTITY (1, 1) NOT NULL,
    [Albaran]        NVARCHAR (150)   NULL,
    [Factura]        NVARCHAR (150)   NULL,
    [Forma_pago]     NVARCHAR (100)   NULL,
    [Total_pedido]   DECIMAL (18, 2)  NULL,
    [Total_recibido] DECIMAL (18, 2)  NULL,
    [Total_pagado]   DECIMAL (18, 2)  NULL,
    [Total]          DECIMAL (18, 2)  NULL,
    [CodFormaPago]   INT              NULL,
    [Observacion]    NVARCHAR (200)   NULL,
    [FechaCreacion]  DATETIME         NULL,
    [CodTipoPedido]  INT              NULL,
    CONSTRAINT [PK_gesPedido] PRIMARY KEY CLUSTERED ([CodPedido] ASC),
    CONSTRAINT [FK_gesPedido_gesFormaPagoPedidos] FOREIGN KEY ([CodFormaPago]) REFERENCES [dbo].[gesFormaPagoPedidos] ([CodFormaPago]),
    CONSTRAINT [FK_gesPedido_gesProveedores] FOREIGN KEY ([CodProveedor]) REFERENCES [dbo].[gesProveedores] ([CodProveedor]),
    CONSTRAINT [FK_gesPedido_gesTipoPedido] FOREIGN KEY ([CodTipoPedido]) REFERENCES [dbo].[gesTipoPedido] ([CodTipoPedido])
);


GO
CREATE NONCLUSTERED INDEX [IDX_CodProveedor]
    ON [dbo].[gesPedido]([CodProveedor] ASC) WITH (FILLFACTOR = 80, PAD_INDEX = ON);


GO
CREATE NONCLUSTERED INDEX [IDX_CodTrabajador]
    ON [dbo].[gesPedido]([CodTrabajador] ASC) WITH (FILLFACTOR = 80, PAD_INDEX = ON);


GO
CREATE NONCLUSTERED INDEX [IDX_CodFormaPago]
    ON [dbo].[gesPedido]([CodFormaPago] ASC) WITH (FILLFACTOR = 80, PAD_INDEX = ON);


GO
CREATE NONCLUSTERED INDEX [Idx_CodTipoPedido]
    ON [dbo].[gesPedido]([CodTipoPedido] ASC) WITH (FILLFACTOR = 80, PAD_INDEX = ON);

