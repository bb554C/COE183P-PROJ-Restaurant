using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace BrampsRestaurantOnline.Classes
{
    public class CustomerClass
    {
        public static void AddNewCustomer(int CustomerID, string CustomerName, string ContactNumber, string Address)
        {
            SqlConnection SQLConn = SQLConnection.SQLConnect();
            try
            {
                using (SqlCommand command = new SqlCommand("dbo.AddNewOrder", SQLConn))
                {
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.Add("@IDCustomer", SqlDbType.Int).Value = CustomerID;
                    command.Parameters.Add("@NameCustomer", SqlDbType.VarChar).Value = CustomerName;
                    command.Parameters.Add("@Contact", SqlDbType.NVarChar, 100).Value = ContactNumber;
                    command.Parameters.Add("@Instructions", SqlDbType.VarChar, 100).Value = Address;
                    SQLConn.Open();
                    command.ExecuteNonQuery();
                }
            }
            catch (Exception ex)
            {

            }
            SQLConnection.CloseSQLConnect(SQLConn);
        }



    }
}