using System.Data;
using System.Data.SqlClient;

namespace BrampsRestaurantOnline.Classes
{
    public class ItemClass
    {

        public static DataSet GetItemListByCat(int CatID)
        {
            SqlConnection SQLconn = SQLConnection.SQLConnect();
            DataSet tempItemList = new DataSet();
            using (SqlCommand command = new SqlCommand("dbo.GetItemsByCategory", SQLconn))
            {
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Add("@IDMenuType", SqlDbType.Int).Value = CatID;
                SQLconn.Open();
                SqlDataAdapter da = new SqlDataAdapter(command);
                da.Fill(tempItemList);
                return tempItemList;
            }
        }
    }
}