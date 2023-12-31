USE [VENTAS]
GO
/****** Object:  Table [dbo].[tiposDePagos]    Script Date: 17/10/2023 02:06:48 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tiposDePagos](
	[id_tipoPago] [int] NOT NULL,
	[nombre_pago] [varchar](50) NOT NULL,
	[costoAdicional] [float] NOT NULL,
 CONSTRAINT [PK_tiposDePagos] PRIMARY KEY CLUSTERED 
(
	[id_tipoPago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
