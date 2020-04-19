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
    public partial class assignWorkForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                fillTasksToDDL();
                filLGroupsToDDL();
            }
          
        }

        private void filLGroupsToDDL()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString);
            SqlCommand command = new SqlCommand();
            command.CommandText = $"select serialNumId from Tasks ";
            command.Connection = con;

            try
            {
                con.Open();

                SqlDataReader dr = command.ExecuteReader();
                DropDownList_groups.DataSource = dr;
                DropDownList_groups.DataTextField = "serialNumId";
                DropDownList_groups.DataValueField = "serialNumId";
                DropDownList_groups.DataBind();


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

        private void fillTasksToDDL()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString);
            SqlCommand command = new SqlCommand();
            command.CommandText = $"select TaskId,TaskTitle from Tasks ";
            command.Connection = con;

            try
            {
                con.Open();

                SqlDataReader dr = command.ExecuteReader();
               DropDownList_tasks.DataSource = dr;
                DropDownList_tasks.DataTextField = "TaskTitle";
                DropDownList_tasks.DataValueField = "TaskId";
                DropDownList_tasks.DataBind();


            }

            catch(Exception)
            {
                throw;
            }

            finally
            {
                con.Close();
            }


        }

        protected void DropDown_tasks_SelectedIndexChanged(object sender, EventArgs e)
        {
            


        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Calendar1.Visible = true;

        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            TextBox_due.Text = (Calendar1.SelectedDate.ToShortDateString()).ToString();
            Calendar1.Visible = false;
        }

        protected void Btn_assign_Click(object sender, EventArgs e)
        {
           
        }

        protected void TextBox_due_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString);

            SqlCommand command = new SqlCommand();

            command.CommandText = $"insert into tasks (serialNumId,TaskTitle, TaskAssign,comment,durationdate) values(@serialNumId,@TaskTitle,@TaskAssign,@comment,@durationdate) ";
            command.Parameters.AddWithValue("@TaskAssign", TextBox_taskAssign.Text);
            command.Parameters.AddWithValue("@durationdate", TextBox_due.Text);
            command.Parameters.AddWithValue("@comment", TextBox_comment.Text);
            command.Parameters.AddWithValue("@serialNumId", DropDownList_groups.SelectedValue.ToString());
            command.Parameters.AddWithValue("@TaskTitle", DropDownList_tasks.SelectedItem.ToString());



            command.Connection = con;
            try
            {
                con.Open();
                command.ExecuteNonQuery();

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