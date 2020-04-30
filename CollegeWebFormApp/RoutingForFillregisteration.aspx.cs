using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CollegeWebFormApp
{
    public partial class RoutingForFillregisteration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("ManageTransactionPageCoordinator.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ManageTransactionCoorSuper.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("CoordinatorHomePage.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("CoordinatorManageTransaction.aspx");
        }
    }
}