CREATE TABLE [dbo].[gesLocal] (
    [CodLocal]  INT           IDENTITY (1, 1) NOT NULL,
    [Nombre]    VARCHAR (100) NOT NULL,
    [Activo]    BIT           NULL,
    [Direccion] VARCHAR (150) NULL,
    [Localidad] VARCHAR (50)  NULL,
    [Provincia] VARCHAR (50)  NULL,
    [CIF]       VARCHAR (20)  NULL,
    [Telefono]  CHAR (20)     NULL,
    CONSTRAINT [PK_gesLocal] PRIMARY KEY CLUSTERED ([CodLocal] ASC)
);

