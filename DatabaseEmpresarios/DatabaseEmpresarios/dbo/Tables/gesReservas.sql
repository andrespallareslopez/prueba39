CREATE TABLE [dbo].[gesReservas] (
    [CodReserva]    UNIQUEIDENTIFIER NOT NULL,
    [Llegada]       DATETIME         NULL,
    [Reservada]     DATETIME         NULL,
    [Sentados]      DATETIME         NULL,
    [Realizada]     DATETIME         NULL,
    [Telefono1]     CHAR (12)        NULL,
    [Telefono2]     CHAR (12)        NULL,
    [CodCliente]    INT              NULL,
    [Cliente]       CHAR (250)       NULL,
    [Pax]           CHAR (10)        NULL,
    [Observaciones] CHAR (355)       NULL,
    [CodTrabajador] INT              NULL,
    [Trabajador]    CHAR (150)       NULL,
    [CodLocal]      INT              NULL,
    [Centro]        CHAR (150)       NULL,
    [CodZona]       INT              NULL,
    [Zona]          CHAR (100)       NULL,
    [Señal]         CHAR (50)        NULL,
    CONSTRAINT [PK_gesReservas] PRIMARY KEY CLUSTERED ([CodReserva] ASC)
);

