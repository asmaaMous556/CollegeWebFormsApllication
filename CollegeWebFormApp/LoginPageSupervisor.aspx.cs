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
    public partial class LoginPageSupervisor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString);
            SqlCommand command = new SqlCommand();
            // command.CommandType = CommandType.Text;

            command.CommandText = $"select count(supervisorName) as name, count(SupervisorId)as password from Supervisors where SupervisorName=@SupervisorName and SupervisorId=@SupervisorId";


            command.Parameters.AddWithValue("@SupervisorName", TextBox_name.Text);
            command.Parameters.AddWithValue("@SupervisorId", TextBox_Id.Text);
            command.Connection = con;

            try
            {
                con.Open();
                var isExsist = Convert.ToBoolean(command.ExecuteScalar());
                if (isExsist == false)
                {
                    Label1.Visible = true;
                    Label1.Text = "User name or Password are incorrect!";
                }
                else
                {
                    Session["id"] = TextBox_Id.Text;
                    Session.Add("varSuperName", TextBox_name.Text);
                    Response.Redirect("SupervisorHomePage.aspx");
                }


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

        protected void TextBox_Id_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
