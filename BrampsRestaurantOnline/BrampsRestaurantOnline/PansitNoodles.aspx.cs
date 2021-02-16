using BrampsRestaurantOnline.Classes;
using System;
using System.Data;

namespace BrampsRestaurantOnline
{
    public partial class PansitNoodles : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadPage();
        }
        private void LoadPage()
        {
            DataSet tempIL = ItemClass.GetItemListByCat(10);
            RepeaterPansitNoodles.DataSource = tempIL;
            RepeaterPansitNoodles.DataBind();
        }
    }
}