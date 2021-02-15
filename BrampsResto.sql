USE [BrampsResto]
GO
CREATE SCHEMA Bramps
	CREATE TABLE Bramps.Customer
	(
		CustomerID INT IDENTITY (1,1) NOT NULL PRIMARY KEY,
		CustomerName VARCHAR(200) NOT NULL UNIQUE,
		ContactNumber NVARCHAR(25) NOT NULL,
		Address VARCHAR(200) NOT NULL,
		DateCreated DATETIME2(3) DEFAULT (SYSDATETIME()) NOT NULL
	)
	CREATE TABLE Bramps.MenuType
	(
		MenuTypeID INT IDENTITY (1,1) NOT NULL PRIMARY KEY,
		MenuType VARCHAR(100) NOT NULL UNIQUE,
		TypeDescription VARCHAR(200) NOT NULL,
		DateCreated DATETIME2(3) DEFAULT (SYSDATETIME()) NOT NULL
	)
	CREATE TABLE Bramps.MenuItem
	(
		MenuItemID INT IDENTITY (1,1) NOT NULL PRIMARY KEY,
		MenuTypeID INT NOT NULL FOREIGN KEY REFERENCES MenuType (MenuTypeID),
		MenuItemName VARCHAR(100) NOT NULL UNIQUE,
		MenuItemPrice DECIMAL (18, 0) NOT NULL,
		MenuItemDescription VARCHAR(200) NOT NULL,
		DateCreated DATETIME2(3) DEFAULT (SYSDATETIME()) NOT NULL
	)
	CREATE TABLE Bramps.OrderMenu
	(
		OrderID INT IDENTITY (1,1) NOT NULL PRIMARY KEY,
		CustomerID INT NOT NULL FOREIGN KEY REFERENCES Customer (CustomerID),
		OrderList VARCHAR(MAX) NOT NULL,
		OtherInstructions VARCHAR(MAX) NOT NULL,
	    DateCreated DATETIME2(3) DEFAULT (SYSDATETIME()) NOT NULL
	)

--===================================================================================
--===================================================================================
--===================================================================================

--================= MENU ITEM TABLE PROCEDURES ======================================
USE [BrampsResto]
GO
SET ANSI_NULLS ON
	GO
	SET QUOTED_IDENTIFIER ON
	GO
	CREATE PROCEDURE [dbo].[AddNewMenuItem]
		@IDItem INT,
		@IDType INT,
		@NameItem VARCHAR(50),
		@DescItem Varchar (200),
		@Price Decimal
	AS
	BEGIN
		SET NOCOUNT ON;
			INSERT INTO Bramps.MenuItem(MenuItemID, MenuTypeID, MenuItemName, MenuItemDescription, MenuItemPrice)
			VALUES (@IDItem, @IDType, @NameItem, @DescItem, @Price)
	END
--=========================================================================================
SET ANSI_NULLS ON
	GO
	SET QUOTED_IDENTIFIER ON
	GO
	CREATE PROCEDURE [dbo].[DeleteMenuItem]
		@IDItem INT
	AS
	BEGIN
		DELETE FROM Bramps.MenuItem WHERE MenuItemID = @IDItem
	END
--=========================================================================================
SET ANSI_NULLS ON
	GO
	SET QUOTED_IDENTIFIER ON
	GO
	CREATE PROCEDURE [dbo].[GetMenuItem]
		@IDItem INT
	AS
	BEGIN
		SELECT MenuItemID, MenuTypeID, MenuItemName, MenuItemPrice, MenuItemDescription
		FROM Bramps.MenuItem  WHERE MenuItemID = @IDItem
	END
--=========================================================================================
SET ANSI_NULLS ON
	GO
	SET QUOTED_IDENTIFIER ON
	GO
	CREATE PROCEDURE [dbo].[GetMenuItemList]
	AS
	BEGIN
		SELECT MenuItemID, MenuTypeID, MenuItemName, MenuItemPrice, MenuItemDescription
		FROM Bramps.MenuItem
	END
--=========================================================================================
SET ANSI_NULLS ON
	GO
	SET QUOTED_IDENTIFIER ON
	GO
	CREATE PROCEDURE [dbo].[SearchMenuItem]
		@NameMenuItem VARCHAR(100)
	AS
	BEGIN
		SET NOCOUNT ON;
		SELECT MenuItemID, MenuTypeID, MenuItemName, MenuItemPrice, MenuItemDescription
		FROM Bramps.MenuItem
		WHERE MenuItemName LIKE @NameMenuItem
	END
--=========================================================================================
--=========================================================================================
--=========================================================================================


--================================ CUSTOMER TABLE PROCEDURES ==============================
SET ANSI_NULLS ON
	GO
	SET QUOTED_IDENTIFIER ON
	GO
	CREATE PROCEDURE [dbo].[AddNewCustomer]
		@IDCustomer INT,
		@NameCustomer VARCHAR (200),
		@Contact NVARCHAR (50),
		@Location VARCHAR (200)
	AS
	BEGIN
		SET NOCOUNT ON;
			INSERT INTO Bramps.Customer(CustomerID, CustomerName, ContactNumber, Address)
			VALUES (@IDCustomer, @NameCustomer, @Contact, @Location)
	END
--=========================================================================================
SET ANSI_NULLS ON
	GO
	SET QUOTED_IDENTIFIER ON
	GO
	CREATE PROCEDURE [dbo].[DeleteCustomer]
		@IDCustomer INT
	AS
	BEGIN
		DELETE FROM Bramps.Customer WHERE CustomerID = @IDCustomer
	END
--=========================================================================================
SET ANSI_NULLS ON
	GO
	SET QUOTED_IDENTIFIER ON
	GO
	CREATE PROCEDURE [dbo].[GetCustomer]
		@IDCustomer INT
	AS
	BEGIN
		SELECT CustomerID, CustomerName, ContactNumber, Address
		FROM Bramps.Customer  WHERE CustomerID = @IDCustomer
	END
--=========================================================================================
SET ANSI_NULLS ON
	GO
	SET QUOTED_IDENTIFIER ON
	GO
	CREATE PROCEDURE [dbo].[GetCustomerList]
	AS
	BEGIN
		SELECT CustomerID, CustomerName, ContactNumber, Address
		FROM Bramps.Customer
	END
--=========================================================================================
SET ANSI_NULLS ON
	GO
	SET QUOTED_IDENTIFIER ON
	GO
	CREATE PROCEDURE [dbo].[SearchCustomer]
		@NameCustomer VARCHAR(100)
	AS
	BEGIN
		SET NOCOUNT ON;
		SELECT CustomerID, CustomerName, ContactNumber, Address
		FROM Bramps.Customer
		WHERE CustomerName LIKE @NameCustomer
	END
--=========================================================================================
--=========================================================================================
--=========================================================================================

--============================= ORDER MENU TABLE PROCEDURES ===============================
SET ANSI_NULLS ON
	GO
	SET QUOTED_IDENTIFIER ON
	GO
	CREATE PROCEDURE [dbo].[AddNewOrder]
		@IDOrder INT,
		@IDCustomer INT,
		@ListOrder VARCHAR (MAX),
		@Instructions Varchar (MAX),
		@Price Decimal
	AS
	BEGIN
		SET NOCOUNT ON;
			INSERT INTO Bramps.OrderMenu(OrderID, CustomerID, OrderList, OtherInstructions)
			VALUES (@IDOrder, @IDCustomer, @ListOrder, @Instructions)
	END
--=========================================================================================
SET ANSI_NULLS ON
	GO
	SET QUOTED_IDENTIFIER ON
	GO
	CREATE PROCEDURE [dbo].[DeleteOrder]
		@IDOrder INT
	AS
	BEGIN
		DELETE FROM Bramps.OrderMenu WHERE OrderID = @IDOrder
	END
--=========================================================================================
SET ANSI_NULLS ON
	GO
	SET QUOTED_IDENTIFIER ON
	GO
	CREATE PROCEDURE [dbo].[GetOrder]
		@IDOrder INT
	AS
	BEGIN
		SELECT OrderID, CustomerID, OrderList, OtherInstructions
		FROM Bramps.OrderMenu  WHERE OrderID = @IDOrder
	END
--=========================================================================================
SET ANSI_NULLS ON
	GO
	SET QUOTED_IDENTIFIER ON
	GO
	CREATE PROCEDURE [dbo].[GetOrderList]
	AS
	BEGIN
		SELECT OrderID, CustomerID, OrderList, OtherInstructions
		FROM Bramps.OrderMenu
	END
--=========================================================================================
SET ANSI_NULLS ON
	GO
	SET QUOTED_IDENTIFIER ON
	GO
	CREATE PROCEDURE [dbo].[SearchOrderByCustomer]
		@IDCustomer VARCHAR(100)
	AS
	BEGIN
		SET NOCOUNT ON;
		SELECT OrderID, CustomerID, OrderList, OtherInstructions
		FROM Bramps.OrderMenu
		WHERE CustomerID LIKE @IDCustomer
	END

--=========================================================================================
--=========================================================================================
--=========================================================================================
--=================================== ADDITIONAL PROCEDURES ===============================
SET ANSI_NULLS ON
	GO
	SET QUOTED_IDENTIFIER ON
	GO
	CREATE PROCEDURE [dbo].[GetItems]
	AS
	BEGIN
		SELECT MenuItemID, MenuItemName, MenuItemDescription
		FROM Bramps.MenuItem
	END
--=========================================================================================
SET ANSI_NULLS ON
	GO
	SET QUOTED_IDENTIFIER ON
	GO
	CREATE PROCEDURE [dbo].[GetItemsByCategory]
		@IDMenuType INT
	AS
	BEGIN
		SELECT MenuItemID, MenuItemName, MenuItemDescription
		FROM Bramps.MenuItem WHERE MenuTypeID = @IDMenuType
	END
--=========================================================================================
SET ANSI_NULLS ON
	GO
	SET QUOTED_IDENTIFIER ON
	GO
	CREATE PROCEDURE [dbo].[CountAllItems]
	AS
	BEGIN
		SELECT COUNT(*) FROM Bramps.MenuItem
	END
--=========================================================================================
SET ANSI_NULLS ON
	GO
	SET QUOTED_IDENTIFIER ON
	GO
	CREATE PROCEDURE [dbo].[CountAllItemsByCategory]
	@IDMenuType INT
	AS
	BEGIN
		SELECT COUNT(*) FROM Bramps.MenuItem WHERE MenuTypeID = @IDMenuType 
	END
--=========================================================================================

--=========================================================================================
--=========================================================================================
--=========================================================================================


