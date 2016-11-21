USE [BD_CAMPANIAS]
GO

/****** Object:  Table [dbo].[TabCmp_Cascadas_Filtro]    Script Date: 21/11/2016 11:04:10 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[TabCmp_Cascadas_Filtro](
	[Id_Filtro] [bigint] IDENTITY(1,1) NOT NULL,
	[Nombre_Filtro] [varchar](255) NOT NULL,
	[Segmento] [varchar](50) NOT NULL,
	[Fuente_Filtro] [varchar](500) NULL,
	[Orden] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Filtro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

