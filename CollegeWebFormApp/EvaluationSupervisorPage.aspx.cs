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
    public partial class EvaluationSupervisorPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fillSuperToText();
                fillStudentToDDl();
                //fillGradeToTB();
            }

        }

        private void fillGradeToTB()
        {
            




        }
               



        private void fillStudentToDDl()
        {
            var idForSupervisor = Convert.ToInt32(Session["SupervisorId"]);
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString);
            SqlCommand command = new SqlCommand();
            command.CommandText = $" select top(3) StudentName,StudentId from Students,SupervisionGroups where Students.GroupId=SupervisionGroups.Supervisor_SupervisorId and SupervisionGroups.Supervisor_SupervisorId='{idForSupervisor}' ";

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

        private void fillSuperToText()
        {
            var idForSupervisor = Convert.ToInt32(Session["SupervisorId"]);
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString);
            SqlCommand comman = new SqlCommand();
            comman.CommandText = $"select SupervisorName from Supervisors where SupervisorId='{idForSupervisor}' ";
            comman.Connection = con;

            con.Open();

            SqlDataReader dr = comman.ExecuteReader();
            while (dr.Read())
            {
                TextBox_super.Text = dr.GetValue(0).ToString();


            }
            con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            var CId = Convert.ToInt32(Session["CId"]);
            var idForSupervisor = Convert.ToInt32(Session["SupervisorId"]);
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString);
            SqlCommand comman = new SqlCommand();

            comman.CommandText = $" insert into SupervisorEvaluations (state,comment,StudentId,SupervisorId,CId)values(@state,@comment,@StudentId,@SupervisorId,@CId) ";
            comman.Parameters.AddWithValue("@CId", CId);

            comman.Parameters.AddWithValue("@state", DropDownList_states.SelectedItem.ToString());

            comman.Parameters.AddWithValue("@comment",TextBox_comment.Text );

            comman.Parameters.AddWithValue("@SupervisorId",idForSupervisor );

            comman.Parameters.AddWithValue("@StudentId",DropDownList_students.SelectedValue.ToString() );






            comman.Connection = con;
            try
            {
                con.Open();
                comman.ExecuteNonQuery();
            }
            catch (Exception)
            {
                throw;
            }

            finally
            {
                con.Close();

            }
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Sent!');", true);
        }

        protected void DropDownList_students_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString);
            SqlCommand command = new SqlCommand();
            command.CommandText = $" select TotalMark from Students where StudentId='{DropDownList_students.SelectedValue.ToString()}' ";
            command.Connection = con;
            con.Open();

            SqlDataReader dr = command.ExecuteReader();
            while (dr.Read())
            {
                TextBox_grade.Text = dr.GetValue(0).ToString();


            }
            con.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("CoordinatorHomePage.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("SuperEvaluationInCoor.aspx");
        }
    }
}