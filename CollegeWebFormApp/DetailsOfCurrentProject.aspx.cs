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
    public partial class DetailsOfCurrentProject : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fillFilesTOGridView();
            }

        }

        private void fillFilesTOGridView()
        {
            var id = Convert.ToInt32(Session["FileId"]);
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString);
            SqlCommand command = new SqlCommand();
            command.CommandType = CommandType.Text;
            command.CommandText = $" select FileName ,FileId from CurrentProjects where FileId=@FileId";
            command.Parameters.AddWithValue("@FileId", id);

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


        protected void Download(object sender, EventArgs e)
        {
            int idForFile = int.Parse((sender as LinkButton).CommandArgument);


            byte[] bytes;
            string fileName, contentType;
            string constr = ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand())
                {

                    cmd.CommandText = $" select FileId, FileName,Data,ContentType from CurrentProjects where FileId=@FileId";
                    cmd.Parameters.AddWithValue("@FileId", idForFile);
                    cmd.Connection = con;
                    con.Open();
                    using (SqlDataReader sdr = cmd.ExecuteReader())
                    {

                        sdr.Read();
                        bytes = (byte[])sdr["Data"];
                        contentType = sdr["ContentType"].ToString();
                        fileName = sdr["FileName"].ToString();

                    }

                    con.Close();
                }

            }
            Response.Clear();
            Response.Buffer = true;
            Response.Charset = "";
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.ContentType = contentType;
            Response.AppendHeader("Content-Disposition", "attachment; filename=" + fileName);
            Response.BinaryWrite(bytes);
            Response.Flush();
            Response.End();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Visible = true;
            Label1.Text = "This file is Done!";
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Label2.Visible = true;
            Label2.Text = "This file is Delayed!";
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("CurrentProjectsPage.aspx");
        }
    }

}