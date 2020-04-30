using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
//using Microsoft.VisualBasic.ApplicationServices;

namespace CollegeWebFormApp
{
    public partial class StudentLoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            //if (IsPostBack == false)
            //{


            //    if (Session["varStudentName"] != null)
            //    {
            //        //Session['user_type'] == "stuent" ;
            //        var fn = Session["varStudentName"].ToString();


            //        Label1.Text = fn + " ";
            //    }
            //    else
            //    {

            //    }

        }

        //  [Obsolete]
        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString);
            SqlCommand command = new SqlCommand();
            // command.CommandType = CommandType.Text;

            command.CommandText = $"select count(StudentName) as name,count(StudentId) as password from Students where StudentName=@StudentName and StudentId=@StudentId";


            command.Parameters.AddWithValue("@StudentName", TextBox_name.Text);
            command.Parameters.AddWithValue("@StudentId", TextBox_Id.Text);
            command.Connection = con;

            try
            {
                con.Open();
                var isExsist = Convert.ToBoolean(command.ExecuteScalar());
                if (isExsist == false)
                {
                    Label1.Visible = true;
                    Label1.Text = "User name or ID is incorrect!";
                    Response.Redirect("FillRegisteration.aspx"); 

                }
                else

                {
                    //true=1=enter
                    Session["id"] = TextBox_Id.Text;
                    Session.Add("varStudentName", TextBox_name.Text);
                    
                    Response.Redirect("StudentHomePage.aspx");
                    
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


            // Session.Add("varStudentName", TextBox_name.Text);
           



        }



    }
        
    }


