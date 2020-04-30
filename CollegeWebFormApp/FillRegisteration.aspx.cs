using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.IO;
using System.Data;

namespace CollegeWebFormApp
{
    public partial class FillRegisteration : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                fillGroupsToDDl();

                //if (Session["varStudentName"] != null)
                //{
                //Session['user_type'] == "stuent" ;
               // var fn = Session["varStudentName"].ToString();
                  //  var id = Convert.ToInt32(Session["id"]);
                  //  var Id =Session["Id"];


                    //Label1.Text = fn + " " ;
                }

                

                //else
                //{
                //    Label1.Text = "ggggg";
                //    // response.redirect("registerationpagestudent.aspx");
                //}

            //}
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
                DropDownList1.DataSource = dr;
                DropDownList1.DataTextField = "GroupName";
                DropDownList1.DataValueField = "GroupId";
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

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Btn_send_Click(object sender, EventArgs e)
        {

          // var fn= Session["varStudentName"].ToString();
           // var id = Convert.ToInt32(Session["id"]);
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString);
            SqlCommand comman = new SqlCommand();

            comman.CommandText = $"insert into Students (StudentName,GroupId,Email,COIS342,COIT374,COIT415, hour,Password,CellPhone) values (@StudentName,@GroupId,@Email,@COIS342,@COIT374,@COIT415,@hour,@Password,@CellPhone)";
            comman.Connection = con;
            comman.Parameters.AddWithValue("@COIS342", TextBox_Database.Text);
            comman.Parameters.AddWithValue("@COIT374", TextBox_Computer_network.Text);
            comman.Parameters.AddWithValue("@COIT415", TextBox_DataAnalysis.Text);
            comman.Parameters.AddWithValue("@hour", TextBox_Hours.Text);

            comman.Parameters.AddWithValue("@StudentName", TextBox_name.Text);
            comman.Parameters.AddWithValue("@email", TextBox_email.Text);
            comman.Parameters.AddWithValue("@Password", TextBox_pass.Text);
            comman.Parameters.AddWithValue("@GroupId", DropDownList1.SelectedValue.ToString());
            comman.Parameters.AddWithValue("@CellPhone", TextBox_cellPhone.Text);


            //  comman.CommandText = $"select COIS342 as 'database' , COIT374 as'network',email as'mail' ,ideaSelection as 'idea',  COIT415 as'analysis', hour as'hour', Password as 'password',CellPhone as'phone 'from Students where (COIS342 is null or COIT374 is null or COIT415 is null or hour is null or Password is null and CellPhone is null and ideaSelection is null ) and StudentName ='{fn.ToString()}' and studentId='{id}';";

           

           
            try
            {
                con.Open();
                comman.ExecuteNonQuery();
                //object isExist = comman.ExecuteScalar();


                //if (isExist.Equals(System.DBNull.Value))
                //{




                    //  comman.ExecuteNonQuery();
                    Label3.Visible = true;
                    Label3.Text = "Your Process is Done!";
               // }
                //}

           

               
                //else
                //{
                    
                //}

            }
            catch (Exception ex)
            {
                Label2.Visible = true;
                Label2.Text = "You've been registered before!";


                Console.WriteLine("You've been registered before!", ex.Message);
            }
            finally
            {
                con.Close();
            }

            // Response.Redirect("StudentHomePage.aspx");

            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Saved!');", true);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           // Response.Redirect("ideaSelection.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //MailMessage msg = new MailMessage();
            //msg.To.Add("asmaamosmoh@gmail.com");
            ////msg.To.Add()
            //msg.From = new MailAddress("asmaamosmoh@gmail.com");
            //msg.Subject = "student";
            //msg.Body = "Hello student! You can log in the system, this is your ID =111, Name=asmaa";
            //msg.IsBodyHtml = true;
            //SmtpClient smtp = new SmtpClient();
            //smtp.Host = "localhost";
            //smtp.Port = 25;
            //smtp.Credentials = new System.Net.NetworkCredential("asmaamosmoh@gmail.com","asmaa123");
            //smtp.EnableSsl = true;
            //smtp.UseDefaultCredentials = true;
            //smtp.Send(msg);

          //  Response.Redirect("ViewOutComigTransactionPage.aspx");
        }
        //($"Hello student you an log in to your account using this id'{}' ",d);

        protected void SendEmail(object sender, EventArgs e)
        {
            //using (MailMessage msg=new MailMessage("asmaamosmoh@gmail.com", "asmaamosmoh@gmail.com"))
            //{
            //    msg.Subject = "Student";
            //    msg.Body = "";
            //    msg.IsBodyHtml = false;
              
            //    SmtpClient smtp = new SmtpClient();
            //    smtp.Host = "smtp.gmail.com";
            //    smtp.EnableSsl = true;
            //    NetworkCredential NetworkCred = new NetworkCredential("asmaamosmoh@gmail.com", "asmaa123");
            //    smtp.UseDefaultCredentials = true;
            //    smtp.Credentials = NetworkCred;
            //    smtp.Port = 587;
            //    smtp.Send(msg);
            //    ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Email sent.');", true);
            //}
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
           // Response.Redirect("StudentHomePage.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }

        protected void Button10_Click(object sender, EventArgs e)
        {
           // Response.Redirect("IdeaPresentationPage.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
           // Response.Redirect("StudentHomePage.aspx");
        }
    }
}