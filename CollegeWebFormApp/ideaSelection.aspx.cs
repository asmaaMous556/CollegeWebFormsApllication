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
    public partial class ideaSelection : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {


                if (Session["varStudentName"] != null)
                {

                    var fn = Session["varStudentName"].ToString();
                    var Id = Session["Id"].ToString();

                    Label1.Text = fn + " ";
                }

            }  
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btn_send_Click(object sender, EventArgs e)
        {
            var fn = Session["varStudentName"].ToString();
            ///and studentId='{Convert.ToInt32(Id)}'
            //var Id = Session["Id"].ToString();
            var id = Convert.ToInt32(Session["id"]);
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString);
            SqlCommand comman = new SqlCommand();
            comman.CommandText = $"select ideaSelection from Students where ideaSelection is null and StudentName='{fn.ToString()}' and studentId='{id}';";
            comman.Connection = con;

            try
            {
                con.Open();
                object isExist = comman.ExecuteScalar();

                if (isExist.Equals(System.DBNull.Value))
                {
                    

                    comman.CommandText = $"update students set ideaSelection=@ideaSelection where StudentId='{id}';";
                    comman.Parameters.AddWithValue("@ideaSelection", ContentOfIdea.Text);
                    comman.ExecuteNonQuery();
                    Label3.Visible = true;
                    Label3.Text = "Your process is Done";


                }
                //else {
                    
                //}
                   

                //container


            }
            catch (Exception)
            {

                Label2.Visible = true;
                Label2.Text = " Sorry! You cannot register your idea twice";

            }
            finally
            {
                con.Close();
            }

          //  Session.Add("var1", ContentOfIdea.Text);

            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("StudentHomePage.aspx");
        }
    }
    }
