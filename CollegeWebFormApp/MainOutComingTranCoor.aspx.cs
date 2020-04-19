using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CollegeWebFormApp
{
    public partial class MainOutComingTranCoor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedValue.ToString()=="0")
            {
                Response.Redirect("OutComingTransactionCoor.aspx");
            }

            else if(DropDownList1.SelectedValue.ToString()=="1")
            {
                Response.Redirect("SuperEvaluationInCoor.aspx");
            }

            else
            {
                Response.Redirect("CommitteEvaluationInCoor.aspx");
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("CoordinatorHomePage.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("ManageTransactionPageCoordinator.aspx");
        }
    }
}