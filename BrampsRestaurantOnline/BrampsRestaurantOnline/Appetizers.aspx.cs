using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using BrampsRestaurantOnline.Classes;

namespace BrampsRestaurantOnline
{
    public partial class Appetizers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadPage();
        }
        private void LoadPage()
        {
            DataSet tempIL = ItemClass.GetItemListByCat(5);
            RepeaterAppetizers.DataSource = tempIL;
            RepeaterAppetizers.DataBind();
        }
    }
}