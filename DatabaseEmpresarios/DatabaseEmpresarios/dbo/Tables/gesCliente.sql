CREATE TABLE [dbo].[gesCliente] (
    [CodCliente] INT           IDENTITY (1, 1) NOT NULL,
    [Nombre]     VARCHAR (50)  NULL,
    [Apellidos]  VARCHAR (100) NULL,
    [Empresa]    VARCHAR (100) NULL,
    [Activo]     BIT           NULL,
    [CIF]        CHAR (50)     NULL,
    [Direccion]  VARCHAR (100) NULL,
    [Localidad]  VARCHAR (50)  NULL,
    [Provincia]  VARCHAR (50)  NULL,
    [CP]         CHAR (10)     NULL,
    [CodClase]   INT           NULL,
    [Telefono1]  CHAR (10)     NULL,
    CONSTRAINT [PK_gesCliente] PRIMARY KEY CLUSTERED ([CodCliente] ASC)
);

