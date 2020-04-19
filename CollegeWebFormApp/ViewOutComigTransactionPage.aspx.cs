using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CollegeWebFormApp
{
    public partial class ViewOutComigTransactionPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                FillDataToGridView();

            }

        }

        private void FillDataToGridView()
        {
            var id = Convert.ToInt32(Session["id"]);
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString);
            SqlCommand command = new SqlCommand();
            command.CommandType = CommandType.Text;
            command.CommandText = $"select ProjectTitle as 'Title of Idea' , StudentName as'Name',State ,Comment from Students,Idea_Presentation where Idea_Presentation.StudentId = Students.StudentId and Idea_Presentation.StudentId = @StudentId";
            command.Parameters.AddWithValue("@StudentId", id);

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

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("IdeaPresentationPage.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("StudentHomePage.aspx");
        }
    }
}