using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BrampsRestaurantOnline.Classes;

namespace BrampsRestaurantOnline
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadPage();
        }
        private void LoadPage()
        {
            DataSet tempIL = FoodClass.GetOrder(1);
            RepeaterOrder.DataSource = tempIL;
            RepeaterOrder.DataBind();
        }
        protected void btnCheckout_Click(object sender, EventArgs e)
        {
            CustomerClass.AddNewCustomer(1, "aaa", "aa","sa" );
        }
    }
}