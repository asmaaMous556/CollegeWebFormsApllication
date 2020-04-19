using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CollegeWebFormApp
{
    public partial class StudentHomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text= Session["varStudentName"].ToString();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("ManageFilesPage.aspx");
        }

        protected void btn_manage_transaction_Click(object sender, EventArgs e)
        {
            Response.Redirect("StudentManageTransaction.aspx");
        }

        protected void btn_view_event_Click(object sender, EventArgs e)
        {
            Response.Redirect("StudentViewEvent.aspx");
        }

        protected void btn_prev_projects_Click(object sender, EventArgs e)
        {
            Response.Redirect("PreviousProject.aspx");
        }

        protected void btn_log_out_Click(object sender, EventArgs e)
        {
            Session["varStudentName"] = null;

            Response.Redirect("HomePage.aspx");
        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            Response.Redirect("AssigmentPageStudent.aspx");
        }
    }
}