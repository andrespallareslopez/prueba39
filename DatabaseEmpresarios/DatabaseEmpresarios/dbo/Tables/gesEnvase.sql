CREATE TABLE [dbo].[gesEnvase] (
    [CodEnvase]   INT       IDENTITY (1, 1) NOT NULL,
    [Descripcion] CHAR (50) NULL,
    [Activo]      BIT       NULL,
    CONSTRAINT [PK_gesEnvase] PRIMARY KEY CLUSTERED ([CodEnvase] ASC)
);

