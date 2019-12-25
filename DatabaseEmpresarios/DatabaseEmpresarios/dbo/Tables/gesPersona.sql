CREATE TABLE [dbo].[gesPersona] (
    [CodPersona]   UNIQUEIDENTIFIER NOT NULL,
    [Nombre]       CHAR (50)        NOT NULL,
    [Apellidos]    CHAR (100)       NULL,
    [DNI]          CHAR (10)        NULL,
    [Domicilio]    CHAR (10)        NULL,
    [CodPoblacion] INT              NULL,
    [SS]           CHAR (20)        NULL,
    [Genero]       CHAR (1)         NULL,
    [Movil]        CHAR (15)        NULL,
    [Fijo]         CHAR (15)        NULL,
    [email]        CHAR (20)        NULL,
    [Nacimiento]   DATETIME         NULL,
    CONSTRAINT [PK_gesPersona] PRIMARY KEY CLUSTERED ([CodPersona] ASC)
);

