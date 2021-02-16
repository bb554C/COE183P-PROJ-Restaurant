using BrampsRestaurantOnline.Classes;
using System;
using System.Data;

namespace BrampsRestaurantOnline
{
    public partial class Rice : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadPage();
        }
        private void LoadPage()
        {
            DataSet tempIL = ItemClass.GetItemListByCat(13);
            RepeaterRice.DataSource = tempIL;
            RepeaterRice.DataBind();
        }
    }
}