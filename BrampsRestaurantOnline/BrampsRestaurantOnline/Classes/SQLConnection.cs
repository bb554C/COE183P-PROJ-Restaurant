using System;
using System.Configuration;
using System.Data.SqlClient;

namespace BrampsRestaurantOnline.Classes
{
    public class SQLConnection
    {
        public static SqlConnection SQLConnect()
        {
            SqlConnection connection = null;
            try
            {
                string connectionString = ConfigurationManager.ConnectionStrings["BrampsResto"]?.ConnectionString;
                connection = new SqlConnection(connectionString);
            }
            catch (Exception)
            {

            }
            return connection;
        }
        public static void CloseSQLConnect(SqlConnection SQLconn)
        {
            if (SQLconn != null)
            {
                SQLconn.Close();
            }
        }
    }
}