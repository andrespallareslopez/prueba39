CREATE TABLE [dbo].[gesMesa] (
    [CodMesa]  INT IDENTITY (1, 1) NOT NULL,
    [Mesa]     INT NOT NULL,
    [Pax]      INT NULL,
    [Activa]   BIT NULL,
    [CodZona]  INT NULL,
    [CodLocal] INT NULL,
    CONSTRAINT [PK_gesMesa] PRIMARY KEY CLUSTERED ([CodMesa] ASC)
);

