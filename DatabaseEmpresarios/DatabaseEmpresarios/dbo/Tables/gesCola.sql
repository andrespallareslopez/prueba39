CREATE TABLE [dbo].[gesCola] (
    [CodCola]    INT              NOT NULL,
    [CodFactura] UNIQUEIDENTIFIER NULL,
    [Factura]    INT              NULL,
    [Pax]        INT              NULL,
    [Mesa]       INT              NULL,
    [Cliente]    VARCHAR (100)    NULL,
    [Fecha]      DATETIME         NULL,
    [Trabajador] VARCHAR (100)    NULL,
    [Estado]     CHAR (10)        NULL,
    [Operacion]  CHAR (20)        NULL,
    CONSTRAINT [PK_gesCola] PRIMARY KEY CLUSTERED ([CodCola] ASC)
);

