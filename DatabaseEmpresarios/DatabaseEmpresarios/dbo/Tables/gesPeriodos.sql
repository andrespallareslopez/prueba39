CREATE TABLE [dbo].[gesPeriodos] (
    [CodPeriodo]  INT       NOT NULL,
    [Descripcion] CHAR (50) NOT NULL,
    [Inicio]      DATETIME  NULL,
    [Final]       DATETIME  NULL,
    CONSTRAINT [PK_gesPeriodos] PRIMARY KEY CLUSTERED ([CodPeriodo] ASC)
);

