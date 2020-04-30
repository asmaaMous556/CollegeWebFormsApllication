using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CollegeWebFormApp
{
    public partial class NewComing_transaction : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("SupervisorEvaluateCOIT408.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("SupervisorEvaluationOthers.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("CommitteeEvaluation.aspx");

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("SupervisorHomePage.aspx");
            //Response.Redirect("SupervisorEvaluation449.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("CommitteeEvaluationV2.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("IncomingTransactionPageForsuper.aspx");
        }
    }
}