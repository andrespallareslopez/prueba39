﻿
--region [dbo].[pa_InsertUpdategesPedido]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 4.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_InsertUpdategesPedido]
-- Date Generated: miércoles, 19 de octubre de 2011
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_InsertUpdategesPedido]
	@CodPedido uniqueidentifier,
	@CodProveedor int,
	@CodTrabajador int,
	@Pedido datetime,
	@Recibido datetime,
	@Facturado datetime,
	@Pagado datetime,
	@Telefono char(15),
	@Orden int,
	@Albaran nvarchar(150),
	@Factura nvarchar(150),
	@Forma_pago nvarchar(100),
	@Total_pedido decimal(18, 2),
	@Total_recibido decimal(18, 2),
	@Total_pagado decimal(18, 2),
	@Total decimal(18, 2),
	@CodFormaPago int,
	@Observacion nvarchar(200),
	@FechaCreacion datetime,
	@CodTipoPedido int
AS

SET NOCOUNT ON

IF EXISTS(SELECT [CodPedido] FROM [dbo].[gesPedido] WHERE [CodPedido] = @CodPedido)
BEGIN
	UPDATE [dbo].[gesPedido] SET
		[CodProveedor] = @CodProveedor,
		[CodTrabajador] = @CodTrabajador,
		[Pedido] = @Pedido,
		[Recibido] = @Recibido,
		[Facturado] = @Facturado,
		[Pagado] = @Pagado,
		[Telefono] = @Telefono,
		[Albaran] = @Albaran,
		[Factura] = @Factura,
		[Forma_pago] = @Forma_pago,
		[Total_pedido] = @Total_pedido,
		[Total_recibido] = @Total_recibido,
		[Total_pagado] = @Total_pagado,
		[Total] = @Total,
		[CodFormaPago] = @CodFormaPago,
		[Observacion] = @Observacion,
		[FechaCreacion] = @FechaCreacion,
		[CodTipoPedido] = @CodTipoPedido
	WHERE
		[CodPedido] = @CodPedido
END
ELSE
BEGIN
	INSERT INTO [dbo].[gesPedido] (
		[CodPedido],
		[CodProveedor],
		[CodTrabajador],
		[Pedido],
		[Recibido],
		[Facturado],
		[Pagado],
		[Telefono],
		[Albaran],
		[Factura],
		[Forma_pago],
		[Total_pedido],
		[Total_recibido],
		[Total_pagado],
		[Total],
		[CodFormaPago],
		[Observacion],
		[FechaCreacion],
		[CodTipoPedido]
	) VALUES (
		@CodPedido,
		@CodProveedor,
		@CodTrabajador,
		@Pedido,
		@Recibido,
		@Facturado,
		@Pagado,
		@Telefono,
		@Albaran,
		@Factura,
		@Forma_pago,
		@Total_pedido,
		@Total_recibido,
		@Total_pagado,
		@Total,
		@CodFormaPago,
		@Observacion,
		@FechaCreacion,
		@CodTipoPedido
	)
END

--endregion