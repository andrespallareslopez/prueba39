CREATE TABLE [dbo].[gesArqueo] (
    [CodArqueo]      UNIQUEIDENTIFIER NOT NULL,
    [Orden]          INT              NOT NULL,
    [Fecha]          DATETIME         NULL,
    [CodTrabajador]  INT              NULL,
    [Trabajador]     VARCHAR (150)    NULL,
    [CodLocal]       INT              NULL,
    [Centro]         VARCHAR (100)    NULL,
    [CodDispositivo] INT              NULL,
    [Dispositivo]    VARCHAR (100)    NULL,
    [Comprobado]     BIT              NULL,
    [Dia]            DATETIME         NULL,
    [CodPeriodo]     INT              NULL,
    [Periodo]        CHAR (50)        NULL,
    CONSTRAINT [PK_gesArqueo] PRIMARY KEY CLUSTERED ([CodArqueo] ASC)
);

