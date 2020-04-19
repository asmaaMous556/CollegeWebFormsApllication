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
    public partial class CommitteeEvaluation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fillSuptoTextBox();
                fillStudentsToDDl();
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

                DropDownList1.DataSource = dr;
                DropDownList1.DataTextField = "StudentName";//column name
                DropDownList1.DataValueField = "StudentId";


                DropDownList1.DataBind();
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

        protected void TextBox61_TextChanged(object sender, EventArgs e)
        {

        }
    }
}