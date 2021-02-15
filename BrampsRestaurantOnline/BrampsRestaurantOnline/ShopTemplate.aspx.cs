using BrampsRestaurantOnline.Classes;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BrampsRestaurantOnline
{
    public partial class ShopeTemplate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadPage();
        }
        private void LoadPage()
        {
            DataSet tempIL = ItemClass.GetItemListByCat(1);
            RepeaterBreakfast.DataSource = tempIL;
            RepeaterBreakfast.DataBind();
        }
    }
}