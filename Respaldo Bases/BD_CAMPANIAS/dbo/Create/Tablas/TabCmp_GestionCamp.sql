USE [BD_CAMPANIAS]
GO

/****** Object:  Table [dbo].[TabCmp_GestionCamp]    Script Date: 21/11/2016 11:08:13 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[TabCmp_GestionCamp](
	[ges_nomina] [int] NOT NULL,
	[ges_afiliado_rut] [varchar](20) NULL,
	[ges_fecha_accion] [int] NULL,
	[ges_abierto] [int] NULL,
	[ges_desuscrito] [int] NULL,
	[ges_rebotado] [int] NULL,
	[ges_click] [int] NULL,
	[ges_envio] [int] NULL,
	[ges_fecha_envio] [date] NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

