using System;
using System.Data;
using System.Data.SqlClient;

namespace BrampsRestaurantOnline.Classes
{
    public class CustomerClass
    {
        public static void AddNewCustomerOrder(string OrderList, string CustomerName, string ContactNumber, string Address)
        {
            SqlConnection SQLConn = SQLConnection.SQLConnect();
  
                using (SqlCommand command = new SqlCommand("dbo.AddNewCustomerOrder", SQLConn))
                {
                   
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.Add("@OrderList", SqlDbType.VarChar, 200).Value = OrderList;
                    command.Parameters.Add("@NameCustomer", SqlDbType.VarChar, 200).Value = CustomerName;
                    command.Parameters.Add("@Contact", SqlDbType.NVarChar, 25).Value = ContactNumber;
                    command.Parameters.Add("@Address", SqlDbType.VarChar, 200).Value = Address;
                SQLConn.Open();
                    command.ExecuteNonQuery();
                }
          
            SQLConnection.CloseSQLConnect(SQLConn);
        }
        public static void DeleteCustomer(int CustomerID)
        {
            SqlConnection SQLconn = SQLConnection.SQLConnect();
            using (SqlCommand command = new SqlCommand("dbo.DeleteCustomer", SQLconn))
            {
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Add("@IDCustomerer", SqlDbType.Int).Value = CustomerID;
                SQLconn.Open();
                command.ExecuteNonQuery();
            }


            SQLConnection.CloseSQLConnect(SQLconn);
        }



    }
    public class Customer
    {
        
    }
}