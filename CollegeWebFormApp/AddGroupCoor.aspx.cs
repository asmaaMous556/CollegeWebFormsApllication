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
    public partial class AddGroupCoor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               // fillGroupsToDDl();
                //fillsupertoDDl();
                fillSupertoDDL2();

               // insertGroupName();



            }

            //fillStudent1();
            //fillStudent2();

        }

        private void insertGroupName()
        {

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString);
            SqlCommand command = new SqlCommand();
            command.CommandText = $"insert into SupervisionGroups (GroupName,Supervisor_SupervisorId) values (@GroupName,@Supervisor_SupervisorId) ";
            command.Connection = con;
            command.Parameters.AddWithValue("@GroupName", TextBox_group.Text);
            command.Parameters.AddWithValue("@Supervisor_SupervisorId", DropDownList_supervisor.SelectedValue.ToString());

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

        private void fillSupertoDDL2()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString);
            SqlCommand command = new SqlCommand();
            command.CommandText = $" select SupervisorId,SupervisorName from Supervisors";
            command.Connection = con;

            try
            {
                con.Open();

                SqlDataReader dr = command.ExecuteReader();
                DropDownList_supervisor.DataSource = dr;
                DropDownList_supervisor.DataTextField = "SupervisorName";
                DropDownList_supervisor.DataValueField = "SupervisorId";
                DropDownList_supervisor.DataBind();


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

        private void fillStudent2()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString);
            SqlCommand command = new SqlCommand();
            command.CommandText = $"insert into Students (StudentName,GroupId) values(@StudentName2,'{DropDownList_groups.SelectedValue.ToString()}')";
            //command.CommandText = $"insert into Students (StudentName,GroupId) values(@StudentName1,'{DropDownList_groups.SelectedValue.ToString()}')";
            //command.CommandText = $"insert into Students (StudentName,GroupId) values(@StudentName2,'{DropDownList_groups.SelectedValue.ToString()}')";

            command.Parameters.AddWithValue("@StudentName2", TextBox2.Text);
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

        private void fillStudent1()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString);
            SqlCommand command = new SqlCommand();
            command.CommandText = $"insert into Students (StudentName,GroupId) values(@StudentName1,'{DropDownList_groups.SelectedValue.ToString()}')";
            //command.CommandText = $"insert into Students (StudentName,GroupId) values(@StudentName1,'{DropDownList_groups.SelectedValue.ToString()}')";
            //command.CommandText = $"insert into Students (StudentName,GroupId) values(@StudentName2,'{DropDownList_groups.SelectedValue.ToString()}')";

            command.Parameters.AddWithValue("@StudentName1", TextBox1.Text);
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

        private void fillsupertoDDl()
        {

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString);
            SqlCommand command = new SqlCommand();
           // command.CommandText = $"insert into Students (StudentName,GroupId) values(@StudentName,'{DropDownList_groups.SelectedValue.ToString()}')";
            command.CommandText = $"insert into Students (StudentName,GroupId) values(@StudentName,'{DropDownList_groups.SelectedValue.ToString()}')";

            command.Parameters.AddWithValue("@StudentName", TextBox2.Text);
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

        private void fillGroupsToDDl()
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

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString);
            //SqlCommand command = new SqlCommand();
            //command.CommandText = $"select SupervisorId,SupervisorName from Supervisors where GroupId='{DropDownList_groups.SelectedValue.ToString()}'";
            //command.Connection = con;

            //try
            //{
            //    con.Open();

            //    SqlDataReader dr = command.ExecuteReader();
            //    DropDownList_supervisor.DataSource = dr;
            //    DropDownList_supervisor.DataTextField = "SupervisorName";
            //    DropDownList_supervisor.DataValueField = "SupervisorId";
            //    DropDownList_supervisor.DataBind();


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

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString);
            SqlCommand command = new SqlCommand();
            command.CommandText = $"insert into Students (StudentName,GroupId) values(@StudentName3,'{DropDownList_groups.SelectedValue.ToString()}')";
           
            command.Parameters.AddWithValue("@StudentName3", TextBox3.Text);
            
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

            fillStudent1();
            fillStudent2();

            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Saved!');", true);

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            insertGroupName();
            fillGroupsToDDl();
        }
    }
}