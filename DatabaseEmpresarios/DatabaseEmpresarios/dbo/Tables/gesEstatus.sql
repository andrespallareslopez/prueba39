CREATE TABLE [dbo].[gesEstatus] (
    [CodEstatus]  INT          IDENTITY (1, 1) NOT NULL,
    [Descripcion] VARCHAR (50) NOT NULL,
    [Activo]      BIT          NULL,
    CONSTRAINT [PK_gesEstatus] PRIMARY KEY CLUSTERED ([CodEstatus] ASC)
);

