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
        public static void addNewData(string itemName, int itemQty, decimal itemPrice)
        {
            DT.Rows.Add(itemName, itemQty, itemPrice);
        }
    }
}