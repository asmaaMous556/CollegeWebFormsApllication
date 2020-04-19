using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CollegeWebFormApp
{
    public partial class ManageTransaction : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("FillRegisteration.aspx");
        }

        protected void Btn_select_idea_Click(object sender, EventArgs e)
        {
           // Response.Redirect("ideaSelection.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("IdeaPresentationPage.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewOutComigTransactionPage.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("StudentHomePage.aspx");
        }
    }
}