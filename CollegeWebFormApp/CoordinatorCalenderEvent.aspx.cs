using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Exchange.WebServices.Data;

namespace CollegeWebFormApp
{
    public partial class SupervisorCalenderEvent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fillTasksToDDL();
                fillCooToDDl();


            }


        }

        private void fillCooToDDl()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString);
            SqlCommand command = new SqlCommand();
            command.CommandText = $"select CId,CName from Coordinators ";
            command.Connection = con;

            try
            {
                con.Open();

                SqlDataReader dr = command.ExecuteReader();
                DropDownList_CooName.DataSource = dr;
                DropDownList_CooName.DataTextField = "CName";
                DropDownList_CooName.DataValueField = "CId";
                DropDownList_CooName.DataBind();


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
                DropDownList_taskTitle.DataSource = dr;
                DropDownList_taskTitle.DataTextField = "TaskTitle";
                DropDownList_taskTitle.DataValueField = "TaskId";
                DropDownList_taskTitle.DataBind();


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
            //.Visible = true;


        }


        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            //TextBox_SelectedDate.Text = (Calendar_date.SelectedDate.ToShortDateString()).ToString();
            //Calendar_date.Visible = false;
        }

       

        protected void Button_assign_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString);
            SqlCommand comman = new SqlCommand();
            comman.CommandText = $"insert into Events( CId,EventName, EventDescription,EDate) values(@CId,@EventName,@EventDescription, @EDate)";

            // comman.Parameters.AddWithValue("@id", TextBox_id.Text);
            comman.Parameters.AddWithValue("@EventName", TextBox_eventName.Text);
            comman.Parameters.AddWithValue("@EventDescription", TextBox_description.Text);
            comman.Parameters.AddWithValue("@EDate",Text_date.Text);
           // comman.Parameters.AddWithValue("@EventId", DropDownList_taskTitle.SelectedValue.ToString());
            comman.Parameters.AddWithValue("@CId", DropDownList_CooName.SelectedValue.ToString());

            comman.Connection = con;

            try
            {
                con.Open();
                comman.ExecuteNonQuery();
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

        protected void Button_selectDate_Click1(object sender, EventArgs e)
        {

        }

        protected void Calendar1_SelectionChanged1(object sender, EventArgs e)
        {

        }

        protected void TextBox_SelectedDate_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            CalendarDate.Visible = true;
        }

        protected void CalendarDate_SelectionChanged(object sender, EventArgs e)
        {
            Text_date.Text = (CalendarDate.SelectedDate.ToShortDateString()).ToString();
            CalendarDate.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("CoordinatorHomePage.aspx");
        }
    }
}