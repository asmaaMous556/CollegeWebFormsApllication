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
    public partial class Repository : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fillRepoToGridView();
            }

        }

        private void fillRepoToGridView()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString);
            SqlCommand command = new SqlCommand();
            command.CommandType = CommandType.Text;
            command.CommandText = $"select File_name,FileId,ContentType from Files";
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

                    cmd.CommandText = $" select FileId,UploadedfileByStudent,ContentType,File_name from Files where FileId=@FileId";
                    cmd.Parameters.AddWithValue("@FileId", idForFile);
                    cmd.Connection = con;
                    con.Open();
                    using (SqlDataReader sdr = cmd.ExecuteReader())
                    {

                        sdr.Read();
                        bytes = (byte[])sdr["UploadedfileByStudent"];
                        contentType = sdr["ContentType"].ToString();
                        fileName = sdr["File_name"].ToString();


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

    }
}
