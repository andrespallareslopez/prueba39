CREATE TABLE [dbo].[gesAnulaciones] (
    [CodAnulacion]  INT      IDENTITY (1, 1) NOT NULL,
    [CodTrabajador] INT      NULL,
    [Fecha]         DATETIME NOT NULL,
    [CodProducto]   INT      NOT NULL,
    [CodTipo]       INT      NOT NULL,
    CONSTRAINT [PK_gesAnulaciones] PRIMARY KEY CLUSTERED ([CodAnulacion] ASC)
);

