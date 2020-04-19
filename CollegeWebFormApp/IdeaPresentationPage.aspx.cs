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
    public partial class IdeaPresentationPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //UpdateStudentData();
            setGroupId();

        }

        private void UpdateStudentData()
        {
            var id = Convert.ToInt32(Session["id"]);
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString);
            SqlCommand comman = new SqlCommand();
            comman.CommandText = $"update Students set StudentName=@StudentName,CellPhone=@CellPhone,Email=@Email where StudentId ='{id}' ";
            comman.Connection = con;
            comman.Parameters.AddWithValue("@StudentName",TextBox_name.Text );
            comman.Parameters.AddWithValue("@CellPhone", TextBox_phone.Text);
            comman.Parameters.AddWithValue("@Email", TextBox_email.Text);


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



        }

        private void setGroupId()
        {

            var id = Convert.ToInt32(Session["id"]);
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString);
            SqlCommand comman = new SqlCommand();
            comman.CommandText = $"select Students.GroupId ,Supervisors.SupervisorName from Students,Supervisors,SupervisionGroups where SupervisionGroups.Supervisor_SupervisorId = Supervisors.SupervisorId and Students.GroupId = SupervisionGroups.GroupId and StudentId ='{id}'";
            comman.Connection = con;
            con.Open();

            SqlDataReader dr = comman.ExecuteReader();
            while (dr.Read())
            {
                TextBox_groupId.Text = dr.GetValue(0).ToString();
                TextBox_super.Text = dr.GetValue(1).ToString();

            }

            con.Close();


        }
        protected void Button1_Click(object sender, EventArgs e)
        {
           // setGroupId();
            UpdateStudentData();
            var id = Convert.ToInt32(Session["id"]);
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString);
            SqlCommand comman = new SqlCommand();
            comman.CommandText = $"insert into Repositories (ProjectTitle,Description,KnowledgeArea,StudentId,date) values(@ProjectTitle,@Description,@KnowledgeArea,@StudentId,@date)";

            comman.Connection = con;
            comman.Parameters.AddWithValue("@ProjectTitle", TextBox_title.Text);
            comman.Parameters.AddWithValue("@Description", TextBox_desription.Text);
            comman.Parameters.AddWithValue("@KnowledgeArea", TextBox_area.Text);
            comman.Parameters.AddWithValue("@StudentId", id);
            comman.Parameters.AddWithValue("@date", DateTime.Now.ToString());


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
           
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewOutComigTransactionPage.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("StudentHomePage.aspx");
        }
    }
}