CREATE TABLE [dbo].[TotalArqueo] (
    [Fecha]  DATETIME        NULL,
    [Total]  DECIMAL (18, 2) NULL,
    [Codigo] BIGINT          IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_TotalArqueo] PRIMARY KEY CLUSTERED ([Codigo] ASC)
);

