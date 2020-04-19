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
    public partial class CoordinatorLoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString);
            SqlCommand comman = new SqlCommand();
            comman.CommandText = $"select count(Cname) as name,count(cid),count(password) as password from Coordinators where CName = @name and CId = @Id and  password=@password";

            comman.Parameters.AddWithValue("@id", txt_id.Text);
            comman.Parameters.AddWithValue("@name", txt_name.Text);
            comman.Parameters.AddWithValue("@password", txtId_pass.Text);
           

            comman.Connection = con;

            try
            {
                con.Open();

                var isExsist = Convert.ToBoolean(comman.ExecuteScalar());
                if (isExsist == false)
                {
                    Label1.Visible = true;
                    Label1.Text = " ID and/or password are incorrect!";

                }
                else
                {
                    Session["CId"] = txt_id.Text;
                    Session["CName"] = txt_name.Text;
                    Response.Redirect("CoordinatorHomePage.aspx");
                }
               

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

        }
    }
}