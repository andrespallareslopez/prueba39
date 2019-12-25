CREATE TABLE [dbo].[gesZonas] (
    [CodZona]        INT           IDENTITY (1, 1) NOT NULL,
    [CodLocal]       INT           NULL,
    [CodDispositivo] INT           NULL,
    [CodActividad]   INT           NULL,
    [Nombre]         VARCHAR (100) NOT NULL,
    [Activa]         BIT           NULL,
    [Tipo]           CHAR (50)     NULL,
    CONSTRAINT [PK_gesZonas] PRIMARY KEY CLUSTERED ([CodZona] ASC),
    CONSTRAINT [FK_gesZonas_gesActividades] FOREIGN KEY ([CodActividad]) REFERENCES [dbo].[gesActividades] ([CodActividad]),
    CONSTRAINT [FK_gesZonas_gesDispositivo] FOREIGN KEY ([CodDispositivo]) REFERENCES [dbo].[gesDispositivo] ([CodDispositivo]),
    CONSTRAINT [FK_gesZonas_gesLocal] FOREIGN KEY ([CodLocal]) REFERENCES [dbo].[gesLocal] ([CodLocal])
);

