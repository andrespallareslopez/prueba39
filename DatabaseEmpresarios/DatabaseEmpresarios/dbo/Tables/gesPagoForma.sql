CREATE TABLE [dbo].[gesPagoForma] (
    [CodPago]     INT        IDENTITY (1, 1) NOT NULL,
    [Descripcion] CHAR (100) NULL,
    [Activo]      BIT        NULL,
    CONSTRAINT [PK_gesPagoForma] PRIMARY KEY CLUSTERED ([CodPago] ASC)
);

