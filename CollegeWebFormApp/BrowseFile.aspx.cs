using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.Configuration;

namespace CollegeWebFormApp
{
    public partial class BowseFile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                fillTaskToDDl();
                fillTaskToGridView();

            }
        }

        private void fillTaskToGridView()
        {


        }

        private void fillTaskToDDl()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString);
            SqlCommand command = new SqlCommand();
            command.CommandText = $"select TaskId,TaskTitle from Tasks ";
            command.Connection = con;

            try
            {
                con.Open();

                SqlDataReader dr = command.ExecuteReader();
                DropDownList_task.DataSource = dr;
                DropDownList_task.DataTextField = "TaskTitle";
                DropDownList_task.DataValueField = "TaskId";
                DropDownList_task.DataBind();


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



        protected void upload_Click(object sender, EventArgs e)
        {
            if (FileUploadControl.HasFile)
            {


                FileUploadControl.PostedFile.SaveAs(Server.MapPath("~/Data/") + FileUploadControl.FileName);
                // Label1.Text = "Upload status: File uploaded!";


            }
            DataTable table = new DataTable();
            table.Columns.Add("File", typeof(string));
            table.Columns.Add("size", typeof(string));
            table.Columns.Add("type", typeof(string));

            foreach (string strFile in Directory.GetFiles(Server.MapPath("~/Data/")))
            {
                FileInfo inf = new FileInfo(strFile);

                table.Rows.Add(inf.Name, inf.Length, inf.Extension);

            }

            GridView1.DataSource = table;
            GridView1.DataBind();

            Label1.Text = "Uploaded Successfully!";


        }

        protected void DropDownList_task_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString);
            SqlCommand command = new SqlCommand();
            command.CommandType = CommandType.Text;
            command.CommandText = $" select top (10) taskTitle as 'Title' ,TaskAssign 'Task Assign',comment as 'Comment',durationDate 'Duration Date' from Tasks where TaskId='{DropDownList_task.SelectedValue.ToString()}'";
            command.Connection = con;



            try
            {
                con.Open();


                SqlDataReader dataReader = command.ExecuteReader();

                GridView_task.DataSource = dataReader;

                GridView_task.DataBind();

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

        protected void GridView_task_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }

    
}

