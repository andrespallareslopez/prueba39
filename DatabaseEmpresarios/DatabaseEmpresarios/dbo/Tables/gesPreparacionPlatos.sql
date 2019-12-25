CREATE TABLE [dbo].[gesPreparacionPlatos] (
    [CodProducto_Num] INT            NOT NULL,
    [Preparacion]     NTEXT          NULL,
    [Acompañamiento]  VARCHAR (1000) NULL,
    [Nota]            VARCHAR (8000) NULL,
    CONSTRAINT [PK_gesPlato] PRIMARY KEY CLUSTERED ([CodProducto_Num] ASC)
);


GO
EXECUTE sp_tableoption @TableNamePattern = N'[dbo].[gesPreparacionPlatos]', @OptionName = N'text in row', @OptionValue = N'256';

