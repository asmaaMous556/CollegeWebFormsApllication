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
    public partial class EvaluateResults : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
               // fillStudentGradeTogridView();
                fillGroupsToDDL();
            }

        }

        private void fillGroupsToDDL()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString);
            SqlCommand command = new SqlCommand();
            command.CommandText = $"select GroupId,GroupName from SupervisionGroups";
            command.Connection = con;

            try
            {
                con.Open();

                SqlDataReader dr = command.ExecuteReader();
                DropDownList_groups.DataSource = dr;
                DropDownList_groups.DataTextField = "GroupName";
                DropDownList_groups.DataValueField = "GroupId";
                DropDownList_groups.DataBind();


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

        private void fillStudentGradeTogridView()
        {

            

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

            
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString);
            SqlCommand command = new SqlCommand();
            command.CommandType = CommandType.Text;
            command.CommandText = $"select StudentName,StudentId,SupervisionGroups.GroupId from students,SupervisionGroups where SupervisionGroups.GroupId=Students.GroupId and SupervisionGroups.GroupId='{DropDownList_groups.SelectedValue.ToString()}'";

            command.Connection = con;



            try
            {
                con.Open();


                SqlDataReader dr = command.ExecuteReader();
                DropDownList_students.DataSource = dr;
                DropDownList_students.DataTextField = "StudentName";
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

        protected void TotalOfSuper()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString);
            SqlCommand command = new SqlCommand();
            command.CommandType = CommandType.Text;
            command.CommandText = $" select TotalMark from Students where StudentId='{DropDownList_students.SelectedValue.ToString()}'";

            command.Connection = con;

            con.Open();

            SqlDataReader dr = command.ExecuteReader();
            while (dr.Read())
            {
                TextBox_sup.Text = dr.GetValue(0).ToString();


            }
            con.Close();

        }

        protected void GradeOfCo()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString);
            SqlCommand command = new SqlCommand();
            command.CommandType = CommandType.Text;
            command.CommandText = $" select committeeGrade1 from Students where StudentId='{DropDownList_students.SelectedValue.ToString()}'";

            command.Connection = con;

            con.Open();

            SqlDataReader dr = command.ExecuteReader();
            while (dr.Read())
            {
                TextBox_comm.Text = dr.GetValue(0).ToString();


            }
            con.Close();

        }



        protected void sum()
        {
            
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString);
            SqlCommand command = new SqlCommand();
            command.CommandType = CommandType.Text;
            command.CommandText = $" select TotalMark+committeeGrade1 from Students where StudentId='{DropDownList_students.SelectedValue.ToString()}'";

            command.Connection = con;

            con.Open();

            SqlDataReader dr = command.ExecuteReader();
            while (dr.Read())
            {
                TextBox_coor.Text = dr.GetValue(0).ToString();


            }
            con.Close();

        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            TotalOfSuper();
            GradeOfCo();
        }

        protected void Button_cal_Click(object sender, EventArgs e)
        {
            sum();
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString);
            SqlCommand command = new SqlCommand();
            command.CommandType = CommandType.Text;
            command.CommandText = $"update Students set TotalOfCoordinator=@TotalOfCoordinator where StudentId='{DropDownList_students.SelectedValue.ToString()}'";

            command.Connection = con;
            command.Parameters.AddWithValue("@TotalOfCoordinator", TextBox_coor.Text);

            try
            {
                con.Open();
                command.ExecuteNonQuery();

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
            Response.Redirect("CurrentProjectsPage.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("CoordinatorHomePage.aspx");
        }
    }
}