USE [BrampsResto]
GO

/****** Object:  StoredProcedure [dbo].[AddNewCustomerOrder]    Script Date: 2/17/2021 8:20:22 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO





CREATE PROC [dbo].[AddNewCustomerOrder]
	
		@NameCustomer VARCHAR (200),
		@Contact NVARCHAR (25),
		@Address VARCHAR (200),
		@OrderList VARCHAR (200)
AS
	
	BEGIN
	SET NOCOUNT ON;
		INSERT INTO Bramps.CustomerOrder (OrderList, CustomerName, ContactNumber, CustomerAddress )
		VALUES (@OrderList, @NameCustomer, @Contact, @Address)
		
END
		
GO

