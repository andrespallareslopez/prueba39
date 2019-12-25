CREATE TABLE [dbo].[gesCatalogo] (
    [CodCatalogo]        INT             IDENTITY (1, 1) NOT NULL,
    [CodProveedor]       INT             NULL,
    [CodArticulo]        INT             NULL,
    [CodFormatoPedido]   INT             NULL,
    [CodEmpaquetado]     INT             NULL,
    [Precio]             DECIMAL (18, 4) NULL,
    [Pedir]              BIT             NULL,
    [IVA]                DECIMAL (18, 2) NULL,
    [Debe_haber]         DECIMAL (18, 2) NULL,
    [Importe]            DECIMAL (18, 4) NULL,
    [Contenido_unidad]   DECIMAL (18, 2) NULL,
    [Contenido_caja]     DECIMAL (18, 2) NULL,
    [PedirCajas]         BIT             NULL,
    [Preferente]         BIT             NULL,
    [PrecioUltimoCompra] DECIMAL (18, 2) NULL,
    [PrecioMedioCompra]  DECIMAL (18, 2) NULL,
    CONSTRAINT [PK_gesCatalogo] PRIMARY KEY CLUSTERED ([CodCatalogo] ASC),
    CONSTRAINT [FK_gesCatalogo_gesArticulo] FOREIGN KEY ([CodArticulo]) REFERENCES [dbo].[gesArticulo] ([CodArticulo]),
    CONSTRAINT [FK_gesCatalogo_gesEmpaquetado] FOREIGN KEY ([CodEmpaquetado]) REFERENCES [dbo].[gesEmpaquetado] ([CodEmpaquetado]),
    CONSTRAINT [FK_gesCatalogo_gesFormatoPedido] FOREIGN KEY ([CodFormatoPedido]) REFERENCES [dbo].[gesFormatoPedido] ([CodFormatoPedido]),
    CONSTRAINT [FK_gesCatalogo_gesProveedores] FOREIGN KEY ([CodProveedor]) REFERENCES [dbo].[gesProveedores] ([CodProveedor])
);


GO
CREATE NONCLUSTERED INDEX [IDX_CodProveedor]
    ON [dbo].[gesCatalogo]([CodProveedor] ASC) WITH (FILLFACTOR = 80, PAD_INDEX = ON);


GO
CREATE NONCLUSTERED INDEX [IDX_CodArticulo]
    ON [dbo].[gesCatalogo]([CodArticulo] ASC) WITH (FILLFACTOR = 80, PAD_INDEX = ON);


GO
CREATE NONCLUSTERED INDEX [IDX_CodFormatoPedido]
    ON [dbo].[gesCatalogo]([CodFormatoPedido] ASC) WITH (FILLFACTOR = 80, PAD_INDEX = ON);


GO
CREATE NONCLUSTERED INDEX [IDX_CodEmpaquetado]
    ON [dbo].[gesCatalogo]([CodEmpaquetado] ASC) WITH (FILLFACTOR = 80, PAD_INDEX = ON);

