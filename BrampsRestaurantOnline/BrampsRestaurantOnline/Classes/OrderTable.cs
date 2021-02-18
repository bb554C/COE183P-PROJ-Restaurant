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
            bool check= true;
            for (int i = 0; i < DT.Rows.Count; i++)
            {
                int sum;
                if (itemName == Convert.ToString(DT.Rows[i][1]))
                {
                    check = false;
                    sum = 0;
                    sum = Convert.ToInt32(DT.Rows[i][2]) + itemQty;
                    DT.Rows[i][2] = sum;
                }
                
            }
            if(check)
                 DT.Rows.Add(DT.Rows.Count + 1, itemName, itemQty, itemPrice);

        }
        public static void deleteData(int itemId)
        {
            for(int i = 0; i < DT.Rows.Count; i++)
            {
                if(itemId == Convert.ToInt32(DT.Rows[i][0]))
                {
                    DT.Rows.RemoveAt(i);
                }
            }
        }
        public static decimal getTotal()
        {
            decimal sum = 0;
            for (int i = 0; i < DT.Rows.Count; i++)
            {
                decimal x = Convert.ToInt32(DT.Rows[i][2]) * Convert.ToDecimal(DT.Rows[i][3]);
                sum = sum + x;
            }
            return sum;
        }

        public static string getOrderString()
        {
            string getFinalString = "";
            if(DT.Rows.Count >= 0)
            {
                for (int i = 0; i < DT.Rows.Count; i++)
                {
                    getFinalString = Convert.ToString(DT.Rows[i][1]) + " - " +
                        Convert.ToString(DT.Rows[i][2]) + " - " +
                        Convert.ToString(DT.Rows[i][3]) + "\n";
                }
            }
            return getFinalString;
        }
    }
}