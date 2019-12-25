CREATE TABLE [dbo].[gesMagnitud] (
    [CodMagnitud] INT             IDENTITY (1, 1) NOT NULL,
    [Descripcion] VARCHAR (100)   NOT NULL,
    [Conversion]  DECIMAL (18, 4) NULL,
    [Tipo]        CHAR (10)       NULL,
    CONSTRAINT [PK_gesMagnitud] PRIMARY KEY CLUSTERED ([CodMagnitud] ASC)
);

