CREATE TABLE [dbo].[gesFactura] (
    [CodFactura]    UNIQUEIDENTIFIER NOT NULL,
    [Abierta]       DATETIME         NULL,
    [Facturada]     DATETIME         NULL,
    [Cobrada]       DATETIME         NULL,
    [Importe]       DECIMAL (18, 2)  NULL,
    [Mesa]          CHAR (50)        NULL,
    [Pax]           INT              NULL,
    [CodCliente]    INT              NULL,
    [CodTrabajador] UNIQUEIDENTIFIER NULL,
    [Estado]        VARCHAR (10)     NULL,
    [CodLocal]      INT              NULL,
    [Numero]        INT              NULL,
    [Cliente]       VARCHAR (100)    NULL,
    [CodPeriodo]    INT              NULL,
    [Operador]      VARCHAR (100)    NULL,
    [Dispositivo]   CHAR (50)        NULL,
    CONSTRAINT [PK_gesFactura] PRIMARY KEY CLUSTERED ([CodFactura] ASC),
    CONSTRAINT [FK_gesFactura_gesLocal] FOREIGN KEY ([CodLocal]) REFERENCES [dbo].[gesLocal] ([CodLocal]),
    CONSTRAINT [FK_gesFactura_gesPeriodos] FOREIGN KEY ([CodPeriodo]) REFERENCES [dbo].[gesPeriodos] ([CodPeriodo]),
    CONSTRAINT [FK_gesFactura_gesTrabajador] FOREIGN KEY ([CodTrabajador]) REFERENCES [dbo].[gesTrabajador] ([CodTrabajador])
);

