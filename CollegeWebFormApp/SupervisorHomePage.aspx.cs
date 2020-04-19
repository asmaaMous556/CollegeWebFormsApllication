using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CollegeWebFormApp
{
    public partial class SupervisorHomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Session["varSuperName"].ToString();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ManageTransactionSupervisor.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("AssignWorkSupervisor.aspx");
        }

        protected void btn_viw_event_Click(object sender, EventArgs e)
        {
            Response.Redirect("StudentViewEvent.aspx");
        }

        protected void btn_Contact_Click(object sender, EventArgs e)
        {
            Response.Redirect("ContactPage.aspx");
        }
    }
}