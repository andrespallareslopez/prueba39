CREATE TABLE [dbo].[gesClaseCliente] (
    [CodClase]    INT           IDENTITY (1, 1) NOT NULL,
    [Descripcion] VARCHAR (100) NOT NULL,
    CONSTRAINT [PK_gesClaseCliente] PRIMARY KEY CLUSTERED ([CodClase] ASC)
);

