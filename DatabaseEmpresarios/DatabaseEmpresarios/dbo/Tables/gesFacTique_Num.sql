CREATE TABLE [dbo].[gesFacTique_Num] (
    [CodDetalle]      UNIQUEIDENTIFIER NOT NULL,
    [CodFactura]      UNIQUEIDENTIFIER NULL,
    [CodProducto]     UNIQUEIDENTIFIER NULL,
    [Detalle]         VARCHAR (150)    NULL,
    [Unidad]          INT              NULL,
    [Importe]         DECIMAL (18, 2)  NULL,
    [SubTotal]        DECIMAL (18, 2)  NULL,
    [CodTrabajador]   UNIQUEIDENTIFIER NULL,
    [Suceso]          CHAR (50)        NULL,
    [Operacion]       CHAR (50)        NULL,
    [Fecha]           DATETIME         NULL,
    [Orden]           INT              NULL,
    [CodDispositivo]  INT              NULL,
    [CodActividad]    INT              NULL,
    [Relacion]        UNIQUEIDENTIFIER NULL,
    [Estadio]         CHAR (50)        NULL,
    [CodCola]         INT              NULL,
    [CodProducto_Num] INT              NULL,
    [FechaNegocio]    DATETIME         NULL,
    CONSTRAINT [PK_gesFacTique_Num] PRIMARY KEY CLUSTERED ([CodDetalle] ASC),
    CONSTRAINT [FK_gesFacTique_Num_gesActividades] FOREIGN KEY ([CodActividad]) REFERENCES [dbo].[gesActividades] ([CodActividad]),
    CONSTRAINT [FK_gesFacTique_Num_gesDispositivo] FOREIGN KEY ([CodDispositivo]) REFERENCES [dbo].[gesDispositivo] ([CodDispositivo]),
    CONSTRAINT [FK_gesFacTique_Num_gesFactura] FOREIGN KEY ([CodFactura]) REFERENCES [dbo].[gesFactura] ([CodFactura]),
    CONSTRAINT [FK_gesFacTique_Num_gesHistoricoFactura] FOREIGN KEY ([CodFactura]) REFERENCES [dbo].[gesHistoricoFactura] ([CodFactura]),
    CONSTRAINT [FK_gesFacTique_Num_gesProducto_Num] FOREIGN KEY ([CodProducto_Num]) REFERENCES [dbo].[gesProducto_Num] ([CodProducto_Num]),
    CONSTRAINT [FK_gesFacTique_Num_gesTrabajador] FOREIGN KEY ([CodTrabajador]) REFERENCES [dbo].[gesTrabajador] ([CodTrabajador])
);


GO
ALTER TABLE [dbo].[gesFacTique_Num] NOCHECK CONSTRAINT [FK_gesFacTique_Num_gesActividades];


GO
ALTER TABLE [dbo].[gesFacTique_Num] NOCHECK CONSTRAINT [FK_gesFacTique_Num_gesDispositivo];


GO
CREATE NONCLUSTERED INDEX [IDX_CodFactura]
    ON [dbo].[gesFacTique_Num]([CodFactura] ASC) WITH (FILLFACTOR = 80, PAD_INDEX = ON);


GO
CREATE NONCLUSTERED INDEX [IDX_CodProducto]
    ON [dbo].[gesFacTique_Num]([CodProducto] ASC) WITH (FILLFACTOR = 80, PAD_INDEX = ON);


GO
CREATE NONCLUSTERED INDEX [IDX_CodDispositivo]
    ON [dbo].[gesFacTique_Num]([CodDispositivo] ASC) WITH (FILLFACTOR = 80, PAD_INDEX = ON);


GO
CREATE NONCLUSTERED INDEX [IDX_CodActividad]
    ON [dbo].[gesFacTique_Num]([CodActividad] ASC) WITH (FILLFACTOR = 80, PAD_INDEX = ON);


GO
CREATE NONCLUSTERED INDEX [IDX_CodProducto_Num]
    ON [dbo].[gesFacTique_Num]([CodProducto_Num] ASC) WITH (FILLFACTOR = 80, PAD_INDEX = ON);


GO
CREATE NONCLUSTERED INDEX [IDX_FEchaNegocio]
    ON [dbo].[gesFacTique_Num]([FechaNegocio] ASC) WITH (FILLFACTOR = 80, PAD_INDEX = ON);

