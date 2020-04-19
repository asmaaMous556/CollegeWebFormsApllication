using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CollegeWebFormApp
{
    public partial class OutComingTransactionCoor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack==false)
            {
                fillStudentToGridView();
            }
        }

        private void fillStudentToGridView()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString);
            SqlCommand command = new SqlCommand();
            command.CommandText = $" select StudentName,ProjectId,Repositories.StudentId,Repositories.date from Students,Repositories where students.StudentId = Repositories.StudentId";
            command.Connection = con;

            try
            {
                con.Open();

                SqlDataReader dataReader = command.ExecuteReader();

                GridView1.DataSource = dataReader;

                GridView1.DataBind();


            }
            catch (Exception)
            {
                throw;
            }

            finally
            {
                con.Close();

            }
        }

        protected void Details(object sender,EventArgs e)
        {
            int idForProject = int.Parse((sender as LinkButton).CommandArgument);

            Session["ProjectId"] = idForProject;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString);
            SqlCommand command = new SqlCommand();
            command.CommandText = $" select ProjectId from Repositories where ProjectId=@ProjectId ";
            command.Parameters.AddWithValue("@ProjectId", idForProject);
          


            command.Connection = con;


            try
            {
                con.Open();
                // idForStudent = Session("idForStudent").to;
               


            }

            catch (Exception)
            {
                throw;
            }

            finally
            {
                con.Close();
            }
            Response.Redirect("IdeaPresentationPageCoor.aspx");

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("MainOutComingTranCoor.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("CoordinatorHomePage.aspx");
        }
    }
}