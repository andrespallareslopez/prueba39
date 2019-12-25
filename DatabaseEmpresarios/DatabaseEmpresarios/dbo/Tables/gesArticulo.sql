CREATE TABLE [dbo].[gesArticulo] (
    [CodArticulo]        INT             IDENTITY (1, 1) NOT NULL,
    [CodGrupo]           INT             NULL,
    [CodFamilia]         INT             NULL,
    [CodEnvase]          INT             NULL,
    [CodMagnitud]        INT             NULL,
    [CodGrupoCompra]     INT             NULL,
    [CodSectorPedido]    INT             NULL,
    [CodClase]           INT             NULL,
    [Descripcion]        VARCHAR (100)   NOT NULL,
    [Activo]             BIT             NULL,
    [Contenido_unidad]   DECIMAL (18, 2) NULL,
    [Contenido_caja]     DECIMAL (18, 2) NULL,
    [Existencias]        DECIMAL (18, 2) NULL,
    [Debe_haber]         DECIMAL (18, 2) NULL,
    [PrecioUltimoCompra] DECIMAL (18, 2) NULL,
    [PrecioMedioCompra]  DECIMAL (18, 2) NULL,
    [FactorEnvase]       DECIMAL (18, 2) NULL,
    [CantidadEnvase]     DECIMAL (18, 2) NULL,
    [PesoNeto]           DECIMAL (18, 2) NULL,
    CONSTRAINT [PK_gesArticulo] PRIMARY KEY CLUSTERED ([CodArticulo] ASC),
    CONSTRAINT [FK_gesArticulo_gesArticuloClase] FOREIGN KEY ([CodClase]) REFERENCES [dbo].[gesArticuloClase] ([CodClase]),
    CONSTRAINT [FK_gesArticulo_gesArticuloFamilia] FOREIGN KEY ([CodFamilia]) REFERENCES [dbo].[gesArticuloFamilia] ([CodFamilia]),
    CONSTRAINT [FK_gesArticulo_gesEnvase] FOREIGN KEY ([CodEnvase]) REFERENCES [dbo].[gesEnvase] ([CodEnvase]),
    CONSTRAINT [FK_gesArticulo_gesGrupoCompra] FOREIGN KEY ([CodGrupoCompra]) REFERENCES [dbo].[gesGrupoCompra] ([CodGrupoCompra]),
    CONSTRAINT [FK_gesArticulo_gesMagnitud] FOREIGN KEY ([CodMagnitud]) REFERENCES [dbo].[gesMagnitud] ([CodMagnitud]),
    CONSTRAINT [FK_gesArticulo_gesSectorPedido] FOREIGN KEY ([CodSectorPedido]) REFERENCES [dbo].[gesSectorPedido] ([CodSectorPedido])
);


GO
CREATE NONCLUSTERED INDEX [IDX_CodArticulo]
    ON [dbo].[gesArticulo]([CodArticulo] ASC) WITH (FILLFACTOR = 80, PAD_INDEX = ON);


GO
CREATE NONCLUSTERED INDEX [IDX_CodGrupo]
    ON [dbo].[gesArticulo]([CodGrupo] ASC) WITH (FILLFACTOR = 80, PAD_INDEX = ON);


GO
CREATE NONCLUSTERED INDEX [IDX_CodEnvase]
    ON [dbo].[gesArticulo]([CodEnvase] ASC) WITH (FILLFACTOR = 80, PAD_INDEX = ON);


GO
CREATE NONCLUSTERED INDEX [IDX_CodFamilia]
    ON [dbo].[gesArticulo]([CodFamilia] ASC) WITH (FILLFACTOR = 80, PAD_INDEX = ON);


GO
CREATE NONCLUSTERED INDEX [IDX_CodMagnitud]
    ON [dbo].[gesArticulo]([CodMagnitud] ASC) WITH (FILLFACTOR = 80, PAD_INDEX = ON);


GO
CREATE NONCLUSTERED INDEX [IDX_CodGrupoCompra]
    ON [dbo].[gesArticulo]([CodGrupoCompra] ASC) WITH (FILLFACTOR = 80, PAD_INDEX = ON);


GO
CREATE NONCLUSTERED INDEX [IDX_CodSectorPedido]
    ON [dbo].[gesArticulo]([CodSectorPedido] ASC) WITH (FILLFACTOR = 80, PAD_INDEX = ON);


GO
CREATE NONCLUSTERED INDEX [IDX_CodClase]
    ON [dbo].[gesArticulo]([CodClase] ASC) WITH (FILLFACTOR = 80, PAD_INDEX = ON);

