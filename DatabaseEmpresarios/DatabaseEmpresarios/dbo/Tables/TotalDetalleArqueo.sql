CREATE TABLE [dbo].[TotalDetalleArqueo] (
    [Fecha]   DATETIME        NOT NULL,
    [Periodo] NVARCHAR (50)   NOT NULL,
    [Detalle] NVARCHAR (50)   NOT NULL,
    [Total]   DECIMAL (18, 2) NULL,
    [Codigo]  BIGINT          NOT NULL,
    [Activo]  BIT             NULL,
    CONSTRAINT [PK_TotalDetalleArqueo] PRIMARY KEY CLUSTERED ([Fecha] ASC, [Periodo] ASC, [Detalle] ASC, [Codigo] ASC),
    CONSTRAINT [FK_TotalDetalleArqueo_TotalArqueo] FOREIGN KEY ([Codigo]) REFERENCES [dbo].[TotalArqueo] ([Codigo])
);

