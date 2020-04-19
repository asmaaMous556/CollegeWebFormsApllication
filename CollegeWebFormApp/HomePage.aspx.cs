using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CollegeWebFormApp
{
    public partial class student : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();

            string[] url = HttpContext.Current.Request.Url.AbsolutePath.Split('/');
            student stu = new student();

        }

        protected void Btn_reg_stu_Click(object sender, EventArgs e)
        {
            Response.Redirect("StudentLoginPage.aspx");


        }

        protected void btn_reg_super_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginPageSupervisor.aspx");
        }

        protected void Btn_login_Click(object sender, EventArgs e)
        {
            Response.Redirect("CoordinatorLoginPage.aspx");
        }

        protected void btn_repo_Click(object sender, EventArgs e)
        {
            Response.Redirect("Repository.aspx");
        }
    }
}