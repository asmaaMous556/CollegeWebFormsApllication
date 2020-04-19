using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CollegeWebFormApp
{
    public partial class CoordinatorHomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Session["CName"].ToString();

        }

        protected void Button_manage_files_Click(object sender, EventArgs e)
        {
            Response.Redirect("ManageFilesCoordinator.aspx");
        }

        protected void Btn_manage_projects_Click(object sender, EventArgs e)
        {
            Response.Redirect("ManageSeniorProjects.aspx");
        }

        protected void Button_manage_transactions_Click(object sender, EventArgs e)
        {
            Response.Redirect("CoordinatorManageTransaction.aspx");
        }

        protected void Btn_manage_election_Click(object sender, EventArgs e)
        {
            Response.Redirect("CoordinatorCalenderEvent.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddGroupCoor.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("CoordinatorLoginPage.aspx");
        }
    }
}