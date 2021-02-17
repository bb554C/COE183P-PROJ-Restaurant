using BrampsRestaurantOnline.Classes;
using System;
using System.Data;
using System.Web.UI.WebControls;

namespace BrampsRestaurantOnline
{
    public partial class Congee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadPage();
        }
        private void LoadPage()
        {
            DataSet tempIL = ItemClass.GetItemListByCat(11);
            RepeaterCongee.DataSource = tempIL;
            RepeaterCongee.DataBind();
        }

        protected void Button_Click(object sender, EventArgs e)
        {
            RepeaterItem item = (sender as Button).NamingContainer as RepeaterItem;
            string itemName = (item.FindControl("ItemName") as HiddenField).Value;
            decimal itemPrice = Convert.ToDecimal((item.FindControl("ItemPrice") as HiddenField).Value);
            int itemQuantity = Convert.ToInt32((item.FindControl("TextBox") as TextBox).Text);
            OrderTable.addNewData(itemName, itemQuantity, itemPrice);
        }
    }
}