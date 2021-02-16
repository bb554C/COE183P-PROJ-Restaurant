using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace BrampsRestaurantOnline.Classes
{
    public static class OrderTable
    {
        public static DataTable DT = new DataTable();
        
        public static void initData()
        {
            DataColumnCollection columns = DT.Columns;
            if (columns.Contains("Item Name"))
            {
                
            }
            else
            {
                DT.Columns.Add("Item ID", typeof(int));
                DT.Columns.Add("Item Name", typeof(string));
                DT.Columns.Add("Item Quantity", typeof(int));
                DT.Columns.Add("Item Price", typeof(decimal));
            }
            
        }
        public static void addNewData(string itemName, int itemQty, decimal itemPrice)
        {
            DT.Rows.Add(DT.Rows.Count+1, itemName, itemQty, itemPrice);
        }
    }
}