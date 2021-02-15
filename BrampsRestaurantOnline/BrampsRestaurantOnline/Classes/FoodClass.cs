using System;
using System.Data;
using System.Data.SqlClient;

namespace BrampsRestaurantOnline.Classes
{
    public class FoodClass
    {
        public static void AddNewMenuItem
        (int MenuItemID, int MenuTypeID, string MenuItemName, string MenuItemDescription, decimal Price)
        {
            SqlConnection SQLConn = SQLConnection.SQLConnect();
            try
            {
                using (SqlCommand command = new SqlCommand("dbo.AddNewMenuItem", SQLConn))
                {
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.Add("@IDItem", SqlDbType.Int).Value = MenuItemID;
                    command.Parameters.Add("@IDType", SqlDbType.Int).Value = MenuTypeID;
                    command.Parameters.Add("@NameItem", SqlDbType.VarChar, 100).Value = MenuItemName;
                    command.Parameters.Add("@DescItem", SqlDbType.VarChar, 100).Value = MenuItemDescription;
                    command.Parameters.Add("@Price", SqlDbType.Decimal).Value = Price;
                    SQLConn.Open();
                    command.ExecuteNonQuery();
                }
            }
            catch (Exception)
            {

            }
            SQLConnection.CloseSQLConnect(SQLConn);

        }
        public static void AddNewOrder
         (int OrderID, int CustomerID, string OrderList, string Instructions, decimal Price)
        {
            SqlConnection SQLConn = SQLConnection.SQLConnect();
            try
            {
                using (SqlCommand command = new SqlCommand("dbo.AddNewOrder", SQLConn))
                {
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.Add("@IDOrder", SqlDbType.Int).Value = OrderID;
                    command.Parameters.Add("@IDCustomer", SqlDbType.Int).Value = CustomerID;
                    command.Parameters.Add("@ListOrder", SqlDbType.VarChar, 100).Value = OrderList;
                    command.Parameters.Add("@Instructions", SqlDbType.VarChar, 100).Value = Instructions;
                    SQLConn.Open();
                    command.ExecuteNonQuery();
                }
            }
            catch (Exception)
            {

            }
            SQLConnection.CloseSQLConnect(SQLConn);

        }
        public static void DeleteOrder(int OrderID)
        {
            SqlConnection SQLconn = SQLConnection.SQLConnect();
            try
            {
                using (SqlCommand command = new SqlCommand("dbo.DeleteOrder", SQLconn))
                {
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.Add("@IDOrder", SqlDbType.Int).Value = OrderID;
                    SQLconn.Open();
                    command.ExecuteNonQuery();
                }
            }
            catch (Exception)
            {

            }
            SQLConnection.CloseSQLConnect(SQLconn);
        }
    }
}