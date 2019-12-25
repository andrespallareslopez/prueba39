CREATE TABLE [dbo].[gesProveedores] (
    [CodProveedor]  INT        IDENTITY (1, 1) NOT NULL,
    [Nombre]        CHAR (30)  NULL,
    [Apellidos]     CHAR (30)  NULL,
    [Empresa]       CHAR (30)  NOT NULL,
    [TelefonoFijo]  CHAR (15)  NULL,
    [TelefonoMovil] CHAR (15)  NULL,
    [Cif]           CHAR (20)  NULL,
    [Direccion]     CHAR (20)  NULL,
    [Localidad]     CHAR (15)  NULL,
    [Provincia]     CHAR (15)  NULL,
    [Activo]        BIT        NULL,
    [Email]         CHAR (50)  NULL,
    [TipoPago]      CHAR (15)  NULL,
    [NRSanitario]   CHAR (150) NULL,
    CONSTRAINT [PK_gesProveedores] PRIMARY KEY CLUSTERED ([CodProveedor] ASC)
);

