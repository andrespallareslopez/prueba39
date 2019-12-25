CREATE TABLE [dbo].[gesFichaje] (
    [CodFichaje]     UNIQUEIDENTIFIER NOT NULL,
    [CodTrabajador]  INT              NULL,
    [Nombre]         VARCHAR (100)    NULL,
    [Apellidos]      VARCHAR (100)    NULL,
    [Entrada]        DATETIME         NULL,
    [Salida]         DATETIME         NULL,
    [CodPeriodo]     INT              NULL,
    [Periodo]        CHAR (50)        NULL,
    [CodLocal]       INT              NULL,
    [Centro]         VARCHAR (100)    NULL,
    [CodZona]        INT              NULL,
    [Zona]           VARCHAR (100)    NULL,
    [CodDispositivo] INT              NULL,
    [Estado]         CHAR (50)        NULL,
    CONSTRAINT [PK_gesFichaje] PRIMARY KEY CLUSTERED ([CodFichaje] ASC)
);

