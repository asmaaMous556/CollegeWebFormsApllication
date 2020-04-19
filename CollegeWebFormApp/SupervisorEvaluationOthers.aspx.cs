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
    public partial class SupervisorEvaluationOthers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fillStudentsToDDL();
                fillSupTotextbox();
            }

        }

        private void fillSupTotextbox()
        {
            var nameOfSup = (Session["varSuperName"]).ToString();

            TextBox_name.Text = nameOfSup;
        }

        private void fillStudentsToDDL()
        {
            var IdForSupervisor = Convert.ToInt32(Session["id"]);
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString);
            SqlCommand command = new SqlCommand();
            command.CommandText = $" select StudentId,StudentName ,SupervisionGroups.Supervisor_SupervisorId from students ,SupervisionGroups where Students.GroupId = SupervisionGroups.GroupId and SupervisionGroups.Supervisor_SupervisorId = '{IdForSupervisor}'";

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

        }
        protected int summ()
        {
            int total2;

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString);
            SqlCommand command = new SqlCommand();
            int sum = Convert.ToInt32(TextBox1.Text) + Convert.ToInt32(TextBox2.Text) + Convert.ToInt32(TextBox3.Text) + Convert.ToInt32(TextBox4.Text);
            int total = Convert.ToInt32(TextBox5.Text) + Convert.ToInt32(TextBox6.Text) + Convert.ToInt32(TextBox7.Text) + Convert.ToInt32(TextBox8.Text) + Convert.ToInt32(TextBox9.Text);
            total2 = sum + total;
            command.CommandText = $"update students set TotalMark='{total2}' where StudentId='{DropDownList1.SelectedValue.ToString()}' ";
            command.Connection = con;
           
            



            try
            {
                con.Open();
                

                command.ExecuteNonQuery();
                return total2;


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

        protected void Button1_Click(object sender, EventArgs e)
        {
            summ();
            
        }
    }
}