CREATE TABLE [dbo].[gesCaja] (
    [CodCaja]       INT             IDENTITY (1, 1) NOT NULL,
    [CodFactura]    INT             NULL,
    [CodCobro]      INT             NULL,
    [Entrega]       DECIMAL (18, 2) NULL,
    [CodTrabajador] INT             NULL,
    CONSTRAINT [PK_gesCaja] PRIMARY KEY CLUSTERED ([CodCaja] ASC)
);

