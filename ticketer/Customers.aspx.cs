using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ticketer
{
    public partial class Customers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["currentUser"] == null)
            {
                Response.Redirect("login.aspx");
            }
            //GridView1.DataSource = JobData.getCustomerList();
            //GridView1.DataBind();
        }

    }
}