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
    public partial class PreviousProject : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           if (!IsPostBack){
                fillProjectsTDDL();
                //fillProjectstoGridView();
            }
        }

        private void fillProjectsTDDL()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString);
            SqlCommand command = new SqlCommand();
            command.CommandText= $"select GroupId,projectTitle from SupervisionGroups  ";
            command.Connection = con;
            try
                {
                con.Open();
                SqlDataReader dr = command.ExecuteReader();

                DropDownList1.DataSource = dr;
                DropDownList1.DataTextField = "projectTitle";//column name
                DropDownList1.DataValueField = "GroupId";
                DropDownList1.DataBind();


              
            }

            catch(Exception)
            {
                throw;

            }
            finally
            {

            }

        }

        

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e) { }
        

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString);
            SqlCommand command = new SqlCommand();
            command.CommandType = CommandType.Text;
            command.CommandText = $"select KnowledgeArea as 'Knowledge Area',description as'Description' from SupervisionGroups where GroupId='{DropDownList1.SelectedValue.ToString()}'";
            command.Connection = con;





            //4- open connection
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
        }
    }
    