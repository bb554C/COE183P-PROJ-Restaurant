using System;
using System.Web;

namespace BrampsRestaurantOnline
{
    public partial class About : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string User_name = string.Empty;
            string User_color = string.Empty;
            HttpCookie reqCookies = Request.Cookies["userInfo"];
            if (reqCookies != null)
            {
                User_name = reqCookies["UserName"].ToString();
                User_color = reqCookies["UserColor"].ToString();
            }
        }
    }
}