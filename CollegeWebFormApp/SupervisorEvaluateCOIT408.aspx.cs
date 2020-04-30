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
    public partial class SupervisorEvaluateHisStudents : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               // fillStudentsToDDL();
                fillsupToText();
                fillStudentToDDl();

            }
         //   SetDate();


        }

        private void SetData()
        {
            var IdForSupervisor = Convert.ToInt32(Session["id"]);
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString);
            SqlCommand command = new SqlCommand();
            command.CommandText = $"insert into EvaluationTransactions (StudentId,SupervisorId,dateOfTransaction)values(@StudentId,@SupervisorId,@dateOfTransaction)  ";
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
            command.CommandText = $" select StudentName,StudentId from Students,SupervisionGroups where Students.GroupId=SupervisionGroups.GroupId and SupervisionGroups.Supervisor_SupervisorId='{IdForSupervisor}' ";
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
           double total;
           


            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString);
            SqlCommand command = new SqlCommand();
           

            total = Convert.ToDouble(TextBox1.Text) + Convert.ToDouble(TextBox4.Text) + Convert.ToDouble(TextBox7.Text) + Convert.ToDouble(TextBox10.Text) + Convert.ToDouble(TextBox13.Text) + Convert.ToDouble(TextBox16.Text) + Convert.ToDouble(TextBox19.Text) + Convert.ToDouble(TextBox22.Text) + Convert.ToDouble(TextBox25.Text) + Convert.ToDouble(TextBox28.Text) + Convert.ToDouble(TextBox31.Text) + Convert.ToDouble(TextBox34.Text) + Convert.ToDouble(TextBox37.Text) + Convert.ToDouble(TextBox40.Text) + Convert.ToDouble(TextBox43.Text) + Convert.ToDouble(TextBox46.Text) + Convert.ToDouble(TextBox49.Text) + Convert.ToDouble(TextBox52.Text) + Convert.ToDouble(TextBox55.Text) + Convert.ToDouble(TextBox58.Text) + Convert.ToDouble(TextBox61.Text);

            command.CommandText = $" update Students set TotalMark='{(total)*0.4}'  where StudentId='{DropDownList1.SelectedValue.ToString()}' ";

            //int sum1 = Convert.ToInt32(TextBox1.Text) + Convert.ToInt32(TextBox2.Text) + Convert.ToInt32(TextBox3.Text) + Convert.ToInt32(TextBox4.Text);
            //int sum2 = Convert.ToInt32(TextBox5.Text) + Convert.ToInt32(TextBox6.Text) + Convert.ToInt32(TextBox7.Text) + Convert.ToInt32(TextBox8.Text) + Convert.ToInt32(TextBox9.Text);
            //int sum3 = Convert.ToInt32(TextBox10.Text) + Convert.ToInt32(TextBox11.Text) + Convert.ToInt32(TextBox12.Text) + Convert.ToInt32(TextBox13.Text) + Convert.ToInt32(TextBox14.Text) + Convert.ToInt32(TextBox15.Text) + Convert.ToInt32(TextBox16.Text) + Convert.ToInt32(TextBox17.Text) + Convert.ToInt32(TextBox18.Text) + Convert.ToInt32(TextBox19.Text);
            //int sum4 = Convert.ToInt32(TextBox20.Text) + Convert.ToInt32(TextBox21.Text) + Convert.ToInt32(TextBox22.Text) + Convert.ToInt32(TextBox23.Text) + Convert.ToInt32(TextBox24.Text) + Convert.ToInt32(TextBox25.Text) + Convert.ToInt32(TextBox26.Text);
            //int sum5 = Convert.ToInt32(TextBox27.Text) + Convert.ToInt32(TextBox28.Text) + Convert.ToInt32(TextBox29.Text) + Convert.ToInt32(TextBox30.Text) + Convert.ToInt32(TextBox31.Text) + Convert.ToInt32(TextBox32.Text) + Convert.ToInt32(TextBox33.Text) + Convert.ToInt32(TextBox34.Text) + Convert.ToInt32(TextBox35.Text) + Convert.ToInt32(TextBox36.Text);
            //int sum6 = Convert.ToInt32(TextBox37.Text) + Convert.ToInt32(TextBox38.Text) + Convert.ToInt32(TextBox39.Text) + Convert.ToInt32(TextBox40.Text) + Convert.ToInt32(TextBox41.Text) + Convert.ToInt32(TextBox42.Text) + Convert.ToInt32(TextBox43.Text) + Convert.ToInt32(TextBox44.Text) + Convert.ToInt32(TextBox45.Text) + Convert.ToInt32(TextBox46.Text);
            //int sum7 = Convert.ToInt32(TextBox47.Text) + Convert.ToInt32(TextBox48.Text) + Convert.ToInt32(TextBox49.Text) + Convert.ToInt32(TextBox50.Text) + Convert.ToInt32(TextBox51.Text) + Convert.ToInt32(TextBox52.Text) + Convert.ToInt32(TextBox53.Text) + Convert.ToInt32(TextBox54.Text) + Convert.ToInt32(TextBox55.Text) + Convert.ToInt32(TextBox56.Text);
            //int sum8 = Convert.ToInt32(TextBox57.Text) + Convert.ToInt32(TextBox58.Text) + Convert.ToInt32(TextBox59.Text) + Convert.ToInt32(TextBox60.Text);

            //total = sum1 + sum2 + sum3 + sum4 + sum5 + sum6 + sum7 + sum8;





            command.Connection = con;
         



            try
            {
                con.Open();
                TextBox64.Text = (total).ToString();
                TextBox67.Text = ((total) * 0.4).ToString();

                
                command.ExecuteNonQuery();
                return total;







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

            protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
        {
           

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            summ();
            SetData();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("CommitteeEvaluationV2.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("SupervisorHomePage.aspx");
        }
    }
}