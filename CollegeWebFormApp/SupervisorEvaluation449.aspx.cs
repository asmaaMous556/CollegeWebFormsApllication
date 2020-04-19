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
    public partial class SupervisorEvaluation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fillSuptoTextBox();
                fillStudentsToDDl();
                fillTitlesToDDl();
            }

        }

        private void fillStudentsToDDl()
        {
            var IdForSupervisor = Convert.ToInt32(Session["id"]);
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString);
            SqlCommand command = new SqlCommand();
            command.CommandText = $"select StudentId,StudentName ,SupervisionGroups.Supervisor_SupervisorId from students ,SupervisionGroups where Students.GroupId = SupervisionGroups.GroupId and SupervisionGroups.Supervisor_SupervisorId = '{IdForSupervisor}'";

            command.Connection = con;
            try
            {
                con.Open();

                SqlDataReader dr = command.ExecuteReader();

                DropDownList_students.DataSource = dr;
                DropDownList_students.DataTextField = "StudentName";//column name
                DropDownList_students.DataValueField = "StudentId";


                DropDownList_students.DataBind();
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

        private void fillSuptoTextBox()
        {
            var nameOfSup = (Session["varSuperName"]).ToString();

            TextBox_name.Text = nameOfSup;
        }

        private void fillTitlesToDDl()
        {
            //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString);
            //SqlCommand command = new SqlCommand();
            //command.CommandText = $"select ProjectId,ProjectTitle from Repositories";
            //command.Connection = con;
            //try
            //{
            //    con.Open();

            //    SqlDataReader dr = command.ExecuteReader();

            //    DropDownList_titles.DataSource = dr;
            //    DropDownList_titles.DataTextField = "ProjectTitle";//column name
            //    DropDownList_titles.DataValueField = "ProjectId";


            //    DropDownList_titles.DataBind();
            //}
            //catch (Exception)
            //{

            //    throw;
            //}
            //finally
            //{
            //    con.Close();
            //}
        }
    }
}