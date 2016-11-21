USE [BD_CAMPANIAS]
GO

/****** Object:  Table [dbo].[TabCmp_Gestion]    Script Date: 21/11/2016 11:05:20 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[TabCmp_Gestion](
	[gst_cmp_id] [bigint] NOT NULL,
	[gst_nom_rut] [varchar](10) NOT NULL,
	[gst_canal] [varchar](5) NOT NULL,
	[gst_fecha] [datetime] NULL,
	[gst_enviado] [bit] NULL,
	[gst_recibido] [smallint] NULL,
	[gst_abierto] [bit] NULL,
	[gst_click] [bit] NULL,
	[gst_desuscrito] [bit] NULL,
 CONSTRAINT [PK_TABCMP_GESTION] PRIMARY KEY NONCLUSTERED 
(
	[gst_cmp_id] ASC,
	[gst_nom_rut] ASC,
	[gst_canal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

