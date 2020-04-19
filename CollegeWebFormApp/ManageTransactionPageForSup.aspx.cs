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
    public partial class ManageTransactionPageForSup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fillStudentToDDL();
                
            }

        }

        private void fillStudentToDDL()
        {
            var IdForSupervisor = Convert.ToInt32(Session["id"]);
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString);
            SqlCommand command = new SqlCommand();
            command.CommandText = $"  select StudentName,StudentId from Students,SupervisionGroups where Students.GroupId=SupervisionGroups.GroupId and SupervisionGroups.Supervisor_SupervisorId='{IdForSupervisor}'";
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

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString);

            SqlCommand command = new SqlCommand();

            command.CommandText = $" select StudentName as 'Name',TotalMark as'Supervisor Grade',state as'State',comment as'Comment' from Students,SupervisorEvaluations where SupervisorEvaluations.StudentId = Students.StudentId and SupervisorEvaluations.StudentId ='{DropDownList1.SelectedValue.ToString()}' ";
            command.Connection = con;
            try
            {
                con.Open();
                SqlDataReader dr = command.ExecuteReader();

                GridView1.DataSource = dr;
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

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("SupervisorHomePage.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("NewComingTransaction.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("ManageTransactionPageCommittee.aspx");
        }
    }
}