USE [VENTAS]
GO
/****** Object:  Table [dbo].[VENTAS]    Script Date: 17/10/2023 02:06:48 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VENTAS](
	[id_venta] [int] IDENTITY(1,1) NOT NULL,
	[id_Detalle] [int] NOT NULL,
	[fechaVenta] [date] NOT NULL,
	[id_empleado] [int] NOT NULL,
	[id_TarjetaCliente] [int] NULL,
	[id_cliente] [int] NOT NULL,
	[total] [float] NOT NULL,
 CONSTRAINT [PK_VENTAS] PRIMARY KEY CLUSTERED 
(
	[id_venta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[VENTAS]  WITH CHECK ADD  CONSTRAINT [FK_VENTAS_CLIENTES] FOREIGN KEY([id_cliente])
REFERENCES [dbo].[CLIENTES] ([id_cliente])
GO
ALTER TABLE [dbo].[VENTAS] CHECK CONSTRAINT [FK_VENTAS_CLIENTES]
GO
ALTER TABLE [dbo].[VENTAS]  WITH CHECK ADD  CONSTRAINT [FK_VENTAS_EMPLEADOS] FOREIGN KEY([id_empleado])
REFERENCES [dbo].[EMPLEADOS] ([id_empleado])
GO
ALTER TABLE [dbo].[VENTAS] CHECK CONSTRAINT [FK_VENTAS_EMPLEADOS]
GO
ALTER TABLE [dbo].[VENTAS]  WITH CHECK ADD  CONSTRAINT [FK_VENTAS_TARJETA_CLIENTES_FRECUENTES1] FOREIGN KEY([id_TarjetaCliente])
REFERENCES [dbo].[TARJETA_CLIENTES_FRECUENTES] ([id_tarjeta])
GO
ALTER TABLE [dbo].[VENTAS] CHECK CONSTRAINT [FK_VENTAS_TARJETA_CLIENTES_FRECUENTES1]
GO
ALTER TABLE [dbo].[VENTAS]  WITH CHECK ADD  CONSTRAINT [FK_VENTAS_ventas_Detalles] FOREIGN KEY([id_Detalle])
REFERENCES [dbo].[ventas_Detalles] ([id_Detalle])
GO
ALTER TABLE [dbo].[VENTAS] CHECK CONSTRAINT [FK_VENTAS_ventas_Detalles]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CLIENTE QUE REALIZO COMPRA' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VENTAS', @level2type=N'CONSTRAINT',@level2name=N'FK_VENTAS_CLIENTES'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID EMPLEADO QUE REALIZÓ LA VENTA' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VENTAS', @level2type=N'CONSTRAINT',@level2name=N'FK_VENTAS_EMPLEADOS'
GO
