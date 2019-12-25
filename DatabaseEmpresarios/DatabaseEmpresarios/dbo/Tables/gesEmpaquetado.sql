CREATE TABLE [dbo].[gesEmpaquetado] (
    [CodEmpaquetado] INT           IDENTITY (1, 1) NOT NULL,
    [Descripcion]    VARCHAR (100) NULL,
    [Activo]         BIT           NULL,
    CONSTRAINT [PK_gesEmpaquetado] PRIMARY KEY CLUSTERED ([CodEmpaquetado] ASC)
);

