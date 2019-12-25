CREATE TABLE [dbo].[gesGrupoCompra] (
    [CodGrupoCompra] INT           IDENTITY (1, 1) NOT NULL,
    [Descripcion]    VARCHAR (100) NULL,
    [Activo]         BIT           NULL,
    CONSTRAINT [PK_gesGrupoCompra] PRIMARY KEY CLUSTERED ([CodGrupoCompra] ASC)
);

