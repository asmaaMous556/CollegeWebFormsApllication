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
    public partial class StudentPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fillGroupsToDDl();
            }

        }

        private void fillGroupsToDDl()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString);
            SqlCommand command = new SqlCommand();
            command.CommandText= $"select GroupId from SupervisionGroups";
            command.Connection = con;

            try
            {
                con.Open();

                SqlDataReader dr = command.ExecuteReader();
                DropDownList1.DataSource = dr;
                DropDownList1.DataTextField = "GroupId";
                DropDownList1.DataValueField = "GroupId";
                DropDownList1.DataBind();


            }
            catch (Exception)
            {
                throw;
            }

            finally{
                con.Close();

            }

        }
            protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString);
            SqlCommand comman = new SqlCommand();
            comman.CommandText = $"insert into students( GroupId,StudentName, Email,Password,CellPhone) values(@GroupId,@name,@email, @password,@CellPhone)";
            
           // comman.Parameters.AddWithValue("@id", text_box_id.Text);
            comman.Parameters.AddWithValue("@name", TextBox_name.Text);
            comman.Parameters.AddWithValue("@email",TextBox_email.Text);
            comman.Parameters.AddWithValue("@password",TextBox_pass.Text);
            comman.Parameters.AddWithValue("@GroupId", DropDownList1.SelectedValue.ToString());
            comman.Parameters.AddWithValue("@CellPhone", TextBox_cellPhone.Text);


            comman.Connection = con;

            try
            {
                con.Open();
                comman.ExecuteNonQuery();
                // comman.ExecuteNonQuery();
                //  Label1.Text = Label1.Text = $"{comman.ExecuteNonQuery()} Rows Affected";

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

           // Session.Add("varStudentName", TextBox_name.Text);
           
           // Session.Add("varStudentEmail", TextBox_email.Text);


            Response.Redirect("StudentLoginPage.aspx");
        }
    }
}