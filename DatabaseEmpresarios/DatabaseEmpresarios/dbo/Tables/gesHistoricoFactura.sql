CREATE TABLE [dbo].[gesHistoricoFactura] (
    [CodFactura]    UNIQUEIDENTIFIER NOT NULL,
    [Abierta]       DATETIME         NULL,
    [Facturada]     DATETIME         NULL,
    [Cobrada]       DATETIME         NULL,
    [Importe]       DECIMAL (18, 2)  NULL,
    [Mesa]          CHAR (50)        NULL,
    [Pax]           INT              NULL,
    [CodCliente]    INT              NULL,
    [CodTrabajador] INT              NULL,
    [Estado]        VARCHAR (10)     NULL,
    [CodLocal]      INT              NULL,
    [Numero]        INT              NULL,
    [Cliente]       VARCHAR (100)    NULL,
    [CodPeriodo]    INT              NULL,
    [Periodo]       CHAR (50)        NULL,
    [Operador]      VARCHAR (100)    NULL,
    [Dispositivo]   CHAR (50)        NULL,
    [FechaNegocio]  DATETIME         NULL,
    CONSTRAINT [PK_gesHistoricoFactura] PRIMARY KEY CLUSTERED ([CodFactura] ASC),
    CONSTRAINT [FK_gesHistoricoFactura_gesPeriodos] FOREIGN KEY ([CodPeriodo]) REFERENCES [dbo].[gesPeriodos] ([CodPeriodo])
);


GO
CREATE NONCLUSTERED INDEX [IDX_Abierta]
    ON [dbo].[gesHistoricoFactura]([Abierta] ASC) WITH (FILLFACTOR = 80, PAD_INDEX = ON);


GO
CREATE NONCLUSTERED INDEX [IDX_Facturada]
    ON [dbo].[gesHistoricoFactura]([Facturada] ASC) WITH (FILLFACTOR = 80, PAD_INDEX = ON);


GO
CREATE NONCLUSTERED INDEX [IDX_Cobrada]
    ON [dbo].[gesHistoricoFactura]([Cobrada] ASC) WITH (FILLFACTOR = 80, PAD_INDEX = ON);


GO
CREATE NONCLUSTERED INDEX [IDX_FechaNegocio]
    ON [dbo].[gesHistoricoFactura]([FechaNegocio] ASC) WITH (FILLFACTOR = 80, PAD_INDEX = ON);


GO
CREATE NONCLUSTERED INDEX [IDX_CodPeriodo]
    ON [dbo].[gesHistoricoFactura]([CodPeriodo] ASC) WITH (FILLFACTOR = 80, PAD_INDEX = ON);


GO
CREATE NONCLUSTERED INDEX [IDX_CodCliente]
    ON [dbo].[gesHistoricoFactura]([CodCliente] ASC) WITH (FILLFACTOR = 80, PAD_INDEX = ON);


GO
CREATE NONCLUSTERED INDEX [IDX_CodTrabajador]
    ON [dbo].[gesHistoricoFactura]([CodTrabajador] ASC) WITH (FILLFACTOR = 80, PAD_INDEX = ON);


GO
CREATE NONCLUSTERED INDEX [IDX_CodLocal]
    ON [dbo].[gesHistoricoFactura]([CodLocal] ASC) WITH (FILLFACTOR = 80, PAD_INDEX = ON);


GO
CREATE NONCLUSTERED INDEX [IDX_Numero]
    ON [dbo].[gesHistoricoFactura]([Numero] ASC);

