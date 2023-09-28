USE [asklad]
GO

/****** Object:  Table [dbo].[Params]    Script Date: 23.08.18 18:38:02 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Params](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Param] [nvarchar](max) NULL,
	[Comment] [nvarchar](max) NULL,
 CONSTRAINT [PK_Params] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)  ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO


