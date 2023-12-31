USE [VENTAS]
GO
/****** Object:  Table [dbo].[ventas_Detalles]    Script Date: 17/10/2023 02:06:48 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ventas_Detalles](
	[id_Detalle] [int] NOT NULL,
	[id_variante] [int] NULL,
	[id_Producto] [int] NOT NULL,
	[cantidad] [float] NOT NULL,
	[precio_unitario] [float] NOT NULL,
	[subtotal] [float] NOT NULL,
 CONSTRAINT [PK_ventas_Detalles] PRIMARY KEY CLUSTERED 
(
	[id_Detalle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ventas_Detalles]  WITH CHECK ADD  CONSTRAINT [FK_ventas_Detalles_PRODUCTOS] FOREIGN KEY([id_Producto])
REFERENCES [dbo].[PRODUCTOS] ([id_producto])
GO
ALTER TABLE [dbo].[ventas_Detalles] CHECK CONSTRAINT [FK_ventas_Detalles_PRODUCTOS]
GO
ALTER TABLE [dbo].[ventas_Detalles]  WITH CHECK ADD  CONSTRAINT [FK_ventas_Detalles_VARIANTES_PRODUCTOS] FOREIGN KEY([id_variante])
REFERENCES [dbo].[VARIANTES_PRODUCTOS] ([id_variante])
GO
ALTER TABLE [dbo].[ventas_Detalles] CHECK CONSTRAINT [FK_ventas_Detalles_VARIANTES_PRODUCTOS]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID DEL PRODUCTO' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ventas_Detalles', @level2type=N'CONSTRAINT',@level2name=N'FK_ventas_Detalles_PRODUCTOS'
GO
