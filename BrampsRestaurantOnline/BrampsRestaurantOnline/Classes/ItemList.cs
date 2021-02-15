using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BrampsRestaurantOnline.Classes
{
    public class ItemList
    {
        public int ItemId { get; set; }
        public string ItemName { get; set; }
        public string ItemDescription { get; set; }
        public decimal ItemPrice { get; set; }
    }
}