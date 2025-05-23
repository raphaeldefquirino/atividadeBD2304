USE [bd_videolocadora]
GO
/****** Object:  Table [dbo].[cliente]    Script Date: 23/04/2025 20:40:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cliente](
	[idCliente] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](100) NULL,
	[cidade] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[idCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[filme]    Script Date: 23/04/2025 20:40:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[filme](
	[idFilme] [int] IDENTITY(1,1) NOT NULL,
	[titulo] [varchar](100) NULL,
	[genero] [varchar](50) NULL,
	[anoLancamento] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idFilme] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[locacao]    Script Date: 23/04/2025 20:40:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[locacao](
	[idLocacao] [int] IDENTITY(1,1) NOT NULL,
	[idCliente] [int] NULL,
	[idFilme] [int] NULL,
	[dataLocacao] [date] NULL,
	[valor] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[idLocacao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[locacao]  WITH CHECK ADD FOREIGN KEY([idCliente])
REFERENCES [dbo].[cliente] ([idCliente])
GO
ALTER TABLE [dbo].[locacao]  WITH CHECK ADD FOREIGN KEY([idFilme])
REFERENCES [dbo].[filme] ([idFilme])
GO
