CREATE TABLE [dbo].[gesPreparacionesArticuloClase] (
    [CodClase]       INT            NOT NULL,
    [Preparacion]    NTEXT          NULL,
    [Acompañamiento] VARCHAR (8000) NULL,
    [Nota]           VARCHAR (8000) NULL,
    CONSTRAINT [PK_gesPreparacionesArticuloClase] PRIMARY KEY CLUSTERED ([CodClase] ASC)
);


GO
EXECUTE sp_tableoption @TableNamePattern = N'[dbo].[gesPreparacionesArticuloClase]', @OptionName = N'text in row', @OptionValue = N'256';

