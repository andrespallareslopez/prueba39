CREATE TABLE [dbo].[gesSeguridad] (
    [CodSeguridad] INT          IDENTITY (1, 1) NOT NULL,
    [Descripcion]  VARCHAR (50) NULL,
    [Activa]       BIT          NULL,
    CONSTRAINT [PK_gesSeguridad] PRIMARY KEY CLUSTERED ([CodSeguridad] ASC)
);

