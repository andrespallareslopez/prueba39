CREATE TABLE [dbo].[gesProducto] (
    [CodProducto] UNIQUEIDENTIFIER NOT NULL,
    [CodGrupo]    INT              NULL,
    [CodFamilia]  INT              NULL,
    [CodZona]     INT              NULL,
    [Descripcion] VARCHAR (100)    NOT NULL,
    [Activo]      BIT              NOT NULL,
    [Precio]      DECIMAL (18, 2)  NULL,
    CONSTRAINT [PK_gesProducto] PRIMARY KEY CLUSTERED ([CodProducto] ASC)
);

