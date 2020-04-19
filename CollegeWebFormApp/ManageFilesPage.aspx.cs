using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CollegeWebFormApp
{
    public partial class BrowseAvalableFiles : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //protected void btn_proposed_ideas_Click(object sender, EventArgs e)
        //{
        //    Response.Redirect("StudentProposedIdea");
        //}

        protected void btn_templates_Click(object sender, EventArgs e)
        {
            Response.Redirect("StudentTemplates.aspx");
        }

        protected void btn_guidlines_Click(object sender, EventArgs e)
        {
            Response.Redirect("StudentGuidelines.aspx");
        }

        protected void btn_proposed_ideas_Click1(object sender, EventArgs e)
        {
            Response.Redirect("StudentProposedIdea.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("StudentHomePage.aspx");
        }
    }
}