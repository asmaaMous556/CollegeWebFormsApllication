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
    public partial class StudentViewEvent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) { fillEventsToDDL(); }

           
            
        }

        private void fillEventsToDDL()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString);
            SqlCommand command = new SqlCommand();
            command.CommandText = "select EventName,EventId from Events";

            command.Connection = con;
            try
            {
                con.Open();

                SqlDataReader dr = command.ExecuteReader();

                DropDownList1.DataSource = dr;
                DropDownList1.DataTextField = "EventName";//column name
                DropDownList1.DataValueField = "EventId";


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

            command.CommandText = $"select EventName as 'Event Name',EventDescription as'Description',eDate as'Date' from Events where EventId='{DropDownList1.SelectedValue.ToString()}'; ";
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

        protected void Button2_Click(object sender, EventArgs e)
        {
              if (Session["varStudentName"] == null)
            {
                Response.Redirect("SupervisorHomePage.aspx");
            }
            else
            {
                Response.Redirect("StudentHomePage.aspx");
            }
        }
           
    }
    }

  