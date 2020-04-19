using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;
using System.Net;

namespace CollegeWebFormApp
{
    public partial class ContactPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void SetStudents()
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString);
            SqlCommand command = new SqlCommand();
            command.CommandText = $"select Email from Supervisors where SupervisorName like '%'+@name+'%' ";
            command.Connection = con;

            command.Parameters.AddWithValue("@name", SqlDbType.NVarChar).Value = TextBox_search.Text;

            con.Open();
            command.ExecuteNonQuery();
            SqlDataReader dr = command.ExecuteReader();
            while (dr.Read())
            {
                TextBox_to.Text = dr.GetValue(0).ToString();


            }
            con.Close();
        }

        protected void Button_send_Click(object sender, EventArgs e)
        {
            using (MailMessage msg = new MailMessage(TextBox_from.Text, TextBox_to.Text))
            {
                msg.Subject = TextBox_subject.Text;
                
                msg.Body = TextBox_body.Text;
                msg.IsBodyHtml = false;

                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.EnableSsl = true;
                NetworkCredential NetworkCred = new NetworkCredential("monaxshroog@gmail.com", "monaXXXshroog1997");
                smtp.UseDefaultCredentials = true;
                smtp.Credentials = NetworkCred;
                smtp.Port = 587;
                smtp.Send(msg);
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Email sent.');", true);
            }
          //

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("SupervisorHomePage.aspx");
        }
    }
}