using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CollegeWebFormApp
{
    public partial class CurrentProjectsPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                FillSupervisorToDDl();
                
            }
            

        }

        private void FillSupervisorToDDl()
        {

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString);
            SqlCommand command = new SqlCommand();
            command.CommandText = $" select SupervisorName,SupervisorId from Supervisors";
            command.Connection = con;

            try
            {
                con.Open();

                SqlDataReader dr = command.ExecuteReader();
                DropDownList_supervisors.DataSource = dr;
                DropDownList_supervisors.DataTextField = "SupervisorName";
                DropDownList_supervisors.DataValueField = "SupervisorId";
                DropDownList_supervisors.DataBind();


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

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList_supervisors_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString);
            SqlCommand command = new SqlCommand();
            command.CommandType = CommandType.Text;
            command.CommandText = $"select FileName,FileId,GroupId,date,SupervisorId from CurrentProjects,SupervisionGroups where SupervisorId=Supervisor_SupervisorId and SupervisorId ='{DropDownList_supervisors.SelectedValue.ToString()}'";
          //  command.CommandText = $" select Supervisor_SupervisorId,GroupId from SupervisionGroups where Supervisor_SupervisorId='{DropDownList_supervisors.SelectedValue.ToString()}'";
            command.Connection = con;



            try
            {
                con.Open();


                SqlDataReader dataReader = command.ExecuteReader();

                GridView1.DataSource = dataReader;

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

        protected void Details(object sender, EventArgs e)
        {
            
            int idForFile = int.Parse((sender as LinkButton).CommandArgument);

            Session["FileId"] = idForFile;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString);
            SqlCommand command = new SqlCommand();
            command.CommandType = CommandType.Text;
            command.CommandText = $" select FileId from CurrentProjects where FileId=@FileId ";
            command.Parameters.AddWithValue("@FileId", idForFile);


            command.Connection = con;


            try
            {
                con.Open();

            }

            catch (Exception)
            {
                throw;
            }

            finally
            {
                con.Close();
            }




            Response.Redirect("DetailsOfCurrentProject.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("CoordinatorHomePage.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("EvaluateResults.aspx");
        }
    }
}