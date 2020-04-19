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
    public partial class RegisterPageSupervisor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void But_register_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString);
            SqlCommand comman = new SqlCommand();
            comman.CommandText = $"insert into supervisors( SupervisorName, Email,Password) values(@name,@email, @password)";

           // comman.Parameters.AddWithValue("@id", TextBox_id.Text);
            comman.Parameters.AddWithValue("@name", TextBox_name.Text);
            comman.Parameters.AddWithValue("@email", TextBox_email.Text);
            comman.Parameters.AddWithValue("@password", TextBox_pass.Text);
            

            comman.Connection = con;

            try
            {
                con.Open();
                comman.ExecuteNonQuery();
                Label1.Visible = true;
                Label1.Text = $"You have been registerd!";

                //container


            }
            catch (Exception)
            {

                throw;
            }
            finally
            {
                con.Close();
            }

            Response.Redirect("SupervisorHomePage.aspx");
        }
    }
}