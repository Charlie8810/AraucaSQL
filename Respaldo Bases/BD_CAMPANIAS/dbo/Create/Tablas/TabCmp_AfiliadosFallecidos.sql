USE [BD_CAMPANIAS]
GO

/****** Object:  Table [dbo].[TabCmp_AfiliadosFallecidos]    Script Date: 21/11/2016 11:02:33 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TabCmp_AfiliadosFallecidos](
	[Afiliado_Rut] [nchar](15) NOT NULL,
	[Afiliado_Dv] [nchar](1) NOT NULL,
	[Fecha_Defuncion] [date] NOT NULL
) ON [PRIMARY]

GO

