USE [BrampsResto]
GO

/****** Object:  Table [Bramps].[CustomerOrder]    Script Date: 2/17/2021 8:19:34 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [Bramps].[CustomerOrder](
	[CustomerOrderID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [varchar](200) NOT NULL,
	[ContactNumber] [nvarchar](25) NOT NULL,
	[CustomerAddress] [varchar](200) NOT NULL,
	[OrderList] [varchar](200) NOT NULL,
 CONSTRAINT [PK_CustomerOrder] PRIMARY KEY CLUSTERED 
(
	[CustomerOrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

