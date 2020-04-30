using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CollegeWebFormApp
{
    public partial class ManageTransactionCoorSuper : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fillSuperToDDl();
            }

        }

        private void fillSuperToDDl()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString);
            SqlCommand command = new SqlCommand();
            command.CommandText = " select SupervisorName,SupervisorId from  Supervisors";
            command.Connection = con;
            try
            {
                con.Open();

                SqlDataReader dr = command.ExecuteReader();

                DropDownList1.DataSource = dr;
                DropDownList1.DataTextField = "SupervisorName";//column name
                DropDownList1.DataValueField = "SupervisorId";


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

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("RoutingForFillregisteration.aspx");
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString);

            SqlCommand command = new SqlCommand();


            command.CommandText = $" select SupervisorName as 'Name',Email as'Email',Department ,phone as'Phone Number' from  Supervisors where SupervisorId='{DropDownList1.SelectedValue.ToString()}'";
            command.Connection = con;
            try
            {
                con.Open();
                SqlDataReader dr = command.ExecuteReader();

                GridView1.DataSource = dr;
                GridView1.DataBind();
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            //var mail="";
            //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString);
            //SqlCommand command = new SqlCommand();
            //command.CommandText = $" select Email from Supervisors where SupervisorId ='{DropDownList1.SelectedValue.ToString()}' ";
            
            //command.Connection = con;
            //con.Open();
            //command.ExecuteNonQuery();
            //SqlDataReader dr = command.ExecuteReader();
            //while (dr.Read())
            //{
            //    mail = dr.GetValue(0).ToString();


            //}
            //con.Close();


            using (MailMessage msg = new MailMessage("monaxshroog@gmail.com", "monaxshroog@gmail.com")) //mail replacing the second mail here
            {
                msg.Subject = "Supervisor";
                msg.Body = $"Hello Mr/Mrs,You can log in to your account using ID '{DropDownList1.SelectedValue.ToString()}' and Name='{DropDownList1.SelectedItem.ToString()}' ";
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
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString);
            SqlCommand command = new SqlCommand();
            command.CommandText = $" delete from Supervisors where SupervisorId ='{DropDownList1.SelectedValue.ToString()}' ";
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

            using (MailMessage msg = new MailMessage("monaxshroog@gmail.com", "monaxshroog@gmail.com"))
            {
                msg.Subject = "Supervisor";
                msg.Body = $"Dear Mr/Mrs, We're sorry we cannot accept your transaction.";
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

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("CoordinatorHomePage.aspx");
        }

        protected void btn_view_Click(object sender, EventArgs e)
        {

        }
    }
}