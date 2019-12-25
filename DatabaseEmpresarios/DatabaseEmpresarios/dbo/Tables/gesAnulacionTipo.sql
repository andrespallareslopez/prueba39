CREATE TABLE [dbo].[gesAnulacionTipo] (
    [CodTipo]     INT        IDENTITY (1, 1) NOT NULL,
    [Descripcion] CHAR (100) NULL,
    [Resta]       BIT        NULL,
    [Activo]      BIT        NULL,
    CONSTRAINT [PK_gesAnulacionTipo] PRIMARY KEY CLUSTERED ([CodTipo] ASC)
);

