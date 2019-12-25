CREATE TABLE [dbo].[gesActividades] (
    [CodActividad] INT           IDENTITY (1, 1) NOT NULL,
    [Descripcion]  VARCHAR (100) NOT NULL,
    [Activa]       BIT           NOT NULL,
    CONSTRAINT [PK_gesActividades] PRIMARY KEY CLUSTERED ([CodActividad] ASC)
);

