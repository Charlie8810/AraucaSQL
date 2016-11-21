USE [BD_CAMPANIAS]
GO

/****** Object:  Table [dbo].[TabCmp_ErroresValidacionCascadas]    Script Date: 21/11/2016 11:05:04 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[TabCmp_ErroresValidacionCascadas](
	[Periodo] [int] NULL,
	[FechaEjecucion] [datetime] NULL,
	[Descripcion] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

