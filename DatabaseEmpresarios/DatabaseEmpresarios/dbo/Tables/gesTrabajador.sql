CREATE TABLE [dbo].[gesTrabajador] (
    [CodTrabajador] UNIQUEIDENTIFIER NOT NULL,
    [Nombre]        VARCHAR (50)     NULL,
    [Apellidos]     VARCHAR (100)    NULL,
    [Alias]         VARCHAR (50)     NULL,
    [Activo]        BIT              NULL,
    [Fijo]          VARCHAR (20)     NULL,
    [Movil]         VARCHAR (20)     NULL,
    [Direccion]     VARCHAR (200)    NULL,
    [Localidad]     VARCHAR (50)     NULL,
    [Provincia]     VARCHAR (50)     NULL,
    [CP]            CHAR (10)        NULL,
    [DNI]           CHAR (20)        NULL,
    [SS]            CHAR (50)        NULL,
    [Banco]         VARCHAR (50)     NULL,
    [Clave]         CHAR (10)        NULL,
    [CodEstatus]    INT              NULL,
    [CodSeguridad]  INT              NULL,
    CONSTRAINT [PK_gesTrabajador] PRIMARY KEY CLUSTERED ([CodTrabajador] ASC),
    CONSTRAINT [FK_gesTrabajador_gesEstatus] FOREIGN KEY ([CodEstatus]) REFERENCES [dbo].[gesEstatus] ([CodEstatus]),
    CONSTRAINT [FK_gesTrabajador_gesSeguridad] FOREIGN KEY ([CodSeguridad]) REFERENCES [dbo].[gesSeguridad] ([CodSeguridad])
);

