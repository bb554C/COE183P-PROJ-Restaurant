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
            DataTable tempIL = OrderTable.DT;
            RepeaterOrder.DataSource = null;
            RepeaterOrder.DataBind();
            RepeaterOrder.DataSource = tempIL;
            RepeaterOrder.DataBind();
            LabelTotal.Text = "Grand Total: ₱ " + OrderTable.getTotal();
        }
        protected void btnCheckout_Click(object sender, EventArgs e)
        {
            CustomerClass.AddNewCustomer(1, "aaa", "aa","sa" );
        }

        protected void ButtonX_Click(object sender, EventArgs e)
        {
            RepeaterItem item = (sender as Button).NamingContainer as RepeaterItem;
            int itemID = Convert.ToInt32((item.FindControl("RowId") as HiddenField).Value);
            OrderTable.deleteData(itemID);
            LoadPage();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(OrderTable.getOrderString() != "" && TextBoxAddress.Text != "" && TextBoxName.Text != "" && TextBoxNumber.Text != "")
            {
                //call stored proc here saveToSQL(OrderTable.getOrderString,TextBoxAddress.Text,TextboxName.Text,TextboxNumber.Text)
                OrderTable.DT.Clear();
                LoadPage();
            }
            
        }
    }
}