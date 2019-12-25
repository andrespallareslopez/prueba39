CREATE TABLE [dbo].[gesDispositivo] (
    [CodDispositivo]  INT           IDENTITY (1, 1) NOT NULL,
    [Nombre]          VARCHAR (100) NOT NULL,
    [Activo]          BIT           NOT NULL,
    [Tipo]            CHAR (20)     NULL,
    [Imprime_comanda] BIT           NOT NULL,
    [Imprime_tique]   BIT           NOT NULL,
    [Imprime_factura] BIT           NOT NULL,
    [Abre_cajon]      BIT           NOT NULL,
    CONSTRAINT [PK_gesDispositivo] PRIMARY KEY CLUSTERED ([CodDispositivo] ASC)
);

