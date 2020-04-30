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
    public partial class CommitteeEvaluationV2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fillsupToText();
                fillStudentToDDl();
            }


        }

        private void SetData()
        {
            var IdForSupervisor = Convert.ToInt32(Session["id"]);
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString);
            SqlCommand command = new SqlCommand();
            command.CommandText = $"insert into CommitteTransactions (StudentId,SupervisorId,dateOfTransaction) values (@StudentId,@SupervisorId,@dateOfTransaction)";

            command.Parameters.AddWithValue("@dateOfTransaction", DateTime.Now);
            command.Parameters.AddWithValue("@SupervisorId", IdForSupervisor);
            command.Parameters.AddWithValue("@StudentId", DropDownList1.SelectedValue.ToString());



            command.Connection = con;
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

        private void fillStudentToDDl()
        {
            var IdForSupervisor = Convert.ToInt32(Session["id"]);
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString);
            SqlCommand command = new SqlCommand();
            command.CommandText = $"select StudentName,StudentId from Students,SupervisionGroups where Students.GroupId!=SupervisionGroups.GroupId and SupervisionGroups.Supervisor_SupervisorId='{IdForSupervisor}' ";
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

        private void fillsupToText()
        {
            var nameOfSup = (Session["varSuperName"]).ToString();
            var IdForSupervisor = Convert.ToInt32(Session["id"]);

            TextBox_name.Text = nameOfSup;

            //  var IdForSupervisor = Convert.ToInt32(Session["id"]);
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString);
            SqlCommand command = new SqlCommand();
            command.CommandText = $" select SupervisorName,SupervisorId  from Supervisors where SupervisorId='{IdForSupervisor}";

            command.Parameters.AddWithValue("SupervisorName", TextBox_name.Text);

            command.Connection = con;
            try
            {
                con.Open();



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

        protected double summ()
        {
            double grade;



            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString);
            SqlCommand command = new SqlCommand();


            grade = Convert.ToDouble(TextBox1.Text) + Convert.ToDouble(TextBox4.Text) + Convert.ToDouble(TextBox7.Text) + Convert.ToDouble(TextBox10.Text) + Convert.ToDouble(TextBox13.Text) + Convert.ToDouble(TextBox16.Text) + Convert.ToDouble(TextBox19.Text) + Convert.ToDouble(TextBox22.Text) + Convert.ToDouble(TextBox25.Text) + Convert.ToDouble(TextBox28.Text) + Convert.ToDouble(TextBox31.Text) + Convert.ToDouble(TextBox34.Text) + Convert.ToDouble(TextBox37.Text) + Convert.ToDouble(TextBox40.Text) + Convert.ToDouble(TextBox43.Text) + Convert.ToDouble(TextBox46.Text) + Convert.ToDouble(TextBox49.Text) + Convert.ToDouble(TextBox52.Text) + Convert.ToDouble(TextBox55.Text) + Convert.ToDouble(TextBox58.Text) + Convert.ToDouble(TextBox61.Text);

            command.CommandText = $" update Students set committeeGrade1='{(grade)*0.6}'where StudentId='{DropDownList1.SelectedValue.ToString()}'";
            command.Connection = con;




            try
            {
                con.Open();
                TextBox64.Text = (grade).ToString();
                TextBox67.Text = ((grade) * 0.6).ToString();


                command.ExecuteNonQuery();
                return grade;






            }
            catch (Exception)
            {

                throw;
            }
            finally
            {
                con.Close();
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Saved!');", true);
            }

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            summ();
            SetData();
        }

        protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("SupervisorHomePage.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("SupervisorEvaluateCOIT408.aspx");
        }
    }

}