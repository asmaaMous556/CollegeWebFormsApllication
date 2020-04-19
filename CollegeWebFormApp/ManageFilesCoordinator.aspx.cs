using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CollegeWebFormApp
{
    public partial class ManageFilesCoordinator : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("TemplatesCoordinator.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ProposedIdeaCoordinator.aspx");
        }

        protected void Button_guidelines_Click(object sender, EventArgs e)
        {
            Response.Redirect("GuidelinesCoordinator.aspx");
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("CoordinatorHomePage.aspx");
        }
    }
}