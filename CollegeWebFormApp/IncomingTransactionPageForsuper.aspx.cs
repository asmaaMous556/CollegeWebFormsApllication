using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CollegeWebFormApp
{
    public partial class IncomingTransactionPageForsuper : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedValue.ToString() == "0")
            {
                Response.Redirect("ManageTransactionPageForSup.aspx");
            }

            else
            {
                Response.Redirect("ManageTransactionPageCommittee.aspx");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("NewComingTransaction.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("SupervisorHomePage.aspx");
        }
    }
}