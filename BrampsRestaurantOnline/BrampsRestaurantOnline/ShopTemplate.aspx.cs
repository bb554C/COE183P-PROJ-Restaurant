using BrampsRestaurantOnline.Classes;
using System;
using System.Data;

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

        protected void Button_Click(object sender, EventArgs e)
        {

        }
    }
}