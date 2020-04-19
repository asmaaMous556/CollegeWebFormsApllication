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
    public partial class ManageTransactionPageCoordinator : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false) { 
                fillStudentsToDDl();
                //fillGroupsToDDl();
                


            }
           
        }

        private void fillGroupsToDDl()
        {
            //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString);
            //SqlCommand command = new SqlCommand();
            //command.CommandText = $"select GroupId,groupName from SupervisionGroups";
            //command.Connection = con;

            //try
            //{
            //    con.Open();

            //    SqlDataReader dr = command.ExecuteReader();
            //    DropDownList1.DataSource = dr;
            //    DropDownList1.DataTextField = "GroupName";
            //    DropDownList1.DataValueField = "GroupId";
            //    DropDownList1.DataBind();


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

        private void fillStudentsToDDl()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString);
            SqlCommand command = new SqlCommand();
            command.CommandText = "select StudentId,StudentName ,COIS342,COIT374,COIT415,hour from students";

            command.Connection = con;
            try
            {
                con.Open();

                SqlDataReader dr = command.ExecuteReader();

                DropDownList1.DataSource = dr;
                DropDownList1.DataTextField = "StudentName";//column name
                DropDownList1.DataValueField = "StudentId";


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

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString);

            SqlCommand command = new SqlCommand();

            command.CommandText = $"select  studentName as name,COIS342 as 'Database',COIT374 as'Computer Network',committeeGrade1 as'Committee Grade',TotalOfCoordinator as'Coordinator Grade',TotalMark as 'Supervisor Grade',COIT415 as'Data Analysis',hour as'Hours',ideaSelection as'Selected Idea' from Students where studentId='{DropDownList1.SelectedValue.ToString()}'; ";
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

        private class TextBox4_dataAnalysis
        {
        }

        protected void setGroup()
        {

            //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString);
            //SqlCommand command = new SqlCommand();
            //command.CommandText = $"select GroupId from SupervisionGroups where studentId='{DropDownList1.SelectedValue.ToString()}'";
            //command.Connection = con;

            //try
            //{
            //    con.Open();

            //    SqlDataReader dr = command.ExecuteReader();
                


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
           // setGroup();
            using (MailMessage msg = new MailMessage("monaxshroog@gmail.com", "MonaXshroog@gmail.com"))
            {
                msg.Subject = "Student";
                msg.Body = $"Hello Student,You can log in to your account using ID '{DropDownList1.SelectedValue.ToString()}' and Name='{DropDownList1.SelectedItem.ToString()}' ";
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
            Label1.Visible = true;
            Label1.Text = "You have accepted this transaction!";

        }

        protected void btn_view_Click(object sender, EventArgs e)
        {


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            using (MailMessage msg = new MailMessage("monaxshroog@gmail.com", "MonaXshroog@gmail.com"))
            {
                msg.Subject = "Student";
                msg.Body = $"Dear Student, We're sorry we cannot accept your transaction.";
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

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("MainOutComingTranCoor.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("CoordinatorHomePage.aspx");
        }
    }
}