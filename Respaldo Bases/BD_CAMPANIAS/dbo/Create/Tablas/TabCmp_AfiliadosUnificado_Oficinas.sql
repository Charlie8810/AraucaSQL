USE [BD_CAMPANIAS]
GO

/****** Object:  Table [dbo].[TabCmp_AfiliadosUnificado_Oficinas]    Script Date: 21/11/2016 11:03:28 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[TabCmp_AfiliadosUnificado_Oficinas](
	[Periodo] [int] NOT NULL,
	[Afiliado_Rut] [int] NULL,
	[Segmento] [varchar](50) NULL,
	[PreAprobado] [int] NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

