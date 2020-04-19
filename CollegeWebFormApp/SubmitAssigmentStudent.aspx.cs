using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CollegeWebFormApp
{
    public partial class SubmitAssigmentStudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fillGroupsToDDl();
               fillSupervisorsToDDl();
               // 

            }
           // BindGrid();
        }

        private void BindGrid()
        {
            //var idOfStudent = Convert.ToInt32(Session["id"]);
            //string constr = ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString;
            //using (SqlConnection con = new SqlConnection(constr))
            //{
            //    using (SqlCommand cmd = new SqlCommand())
            //    {
            //        cmd.CommandText = $"select File_name,FileId from Files where studentId='{idOfStudent}'";
            //        cmd.Connection = con;
            //        con.Open();
            //        GridView1.DataSource = cmd.ExecuteReader();
            //        GridView1.DataBind();
            //        con.Close();
            //    }
            //}
        }

        private void fillSupervisorsToDDl()
        {

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString);
            SqlCommand command = new SqlCommand();
            command.CommandText = $"select SupervisorName,SupervisorId,SupervisionGroups.GroupId from SupervisionGroups, Supervisors where SupervisionGroups.Supervisor_SupervisorId = Supervisors.SupervisorId and SupervisionGroups.GroupId = '{DropDownList_groups.SelectedValue.ToString()}'";
            command.Connection = con;

            try
            {
                con.Open();

                SqlDataReader dr = command.ExecuteReader();
                DropDownList_supervisor.DataSource = dr;
                DropDownList_supervisor.DataTextField = "SupervisorName";
                DropDownList_supervisor.DataValueField = "SupervisorId";
                DropDownList_supervisor.DataBind();


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

        private void fillGroupsToDDl()
        {
            var idOfStudent = Convert.ToInt32(Session["id"]);
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString);
            SqlCommand command = new SqlCommand();
            command.CommandText = $" select SupervisionGroups.GroupId,SupervisionGroups.GroupName from SupervisionGroups,Students where Students.GroupId = SupervisionGroups.GroupId and StudentId ='{idOfStudent}'";
            command.Connection = con;

            try
            {
                con.Open();

                SqlDataReader dr = command.ExecuteReader();
                DropDownList_groups.DataSource = dr;
                DropDownList_groups.DataTextField = "GroupName";
                DropDownList_groups.DataValueField = "GroupId";
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
        protected void Button2_Click(object sender, EventArgs e)
        {
            //Calendar1.Visible = true;
            Response.Redirect("ViewAssigmentStudent.aspx");
        }


        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            //TextBox_date.Text = (Calendar1.SelectedDate.ToShortDateString()).ToString();
            //Calendar1.Visible = false;
        }

        protected void Upload(object sender, EventArgs e)
        {
            var idOfStudent = Convert.ToInt32(Session["id"]);
            string FileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
            string fileContent = FileUpload1.PostedFile.ContentType;
            using (Stream fs = FileUpload1.PostedFile.InputStream)
            {
                using (BinaryReader br = new BinaryReader(fs))
                {
                    byte[] bytes = br.ReadBytes((Int32)fs.Length);
                    string constr = ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString;
                    using (SqlConnection con = new SqlConnection(constr))
                    {
                        string query = $"insert into Files (File_name,UploadedfileByStudent,ContentType,Supervisor_SupervisorId,GroupId,StudentId,date) values(@File_name,@UploadedfileByStudent,@ContentType,@Supervisor_SupervisorId,@GroupId,@StudentId,@date)";
                        using (SqlCommand cmd = new SqlCommand(query))
                        {

                            cmd.Connection = con;
                            cmd.Parameters.AddWithValue("@File_name", FileName);
                            cmd.Parameters.AddWithValue("@date", DateTime.Now.ToString());
                            cmd.Parameters.AddWithValue("@ContentType", fileContent);
                            cmd.Parameters.AddWithValue("@UploadedfileByStudent", bytes);
                            cmd.Parameters.AddWithValue("@Supervisor_SupervisorId", DropDownList_supervisor.SelectedValue.ToString());
                            cmd.Parameters.AddWithValue("@GroupId", DropDownList_groups.SelectedValue.ToString());
                           
                            cmd.Parameters.AddWithValue("@StudentId", idOfStudent);

                            con.Open();
                            cmd.ExecuteNonQuery();

                            con.Close();

                        }

                    }

                 // Response.Redirect(Request.Url.AbsoluteUri);
                }

            }
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Submitted!');", true);
        }
        protected void DownloadFile(object sender, EventArgs e)
        {
            int idForFile = int.Parse((sender as LinkButton).CommandArgument);

            byte[] bytes;
            string fileName, contentType;
            string constr = ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand())
                {

                    cmd.CommandText = $"select File_name, UploadedfileByStudent, ContentType from Files where FileId=@id ";
                    cmd.Parameters.AddWithValue("@id", idForFile);
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

       

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("StudentHomePage.aspx");
        }

        protected void TextBox_date_TextChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList_groups_SelectedIndexChanged(object sender, EventArgs e)
        {
            //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString);
            //SqlCommand command = new SqlCommand();
            //command.CommandText = $" select SupervisorName,SupervisorId from Supervisors where ";
            //command.Connection = con;

            //try
            //{
            //    con.Open();

            //    SqlDataReader dr = command.ExecuteReader();
            //    DropDownList_supervisor.DataSource = dr;
            //    DropDownList_supervisor.DataTextField = "SupervisorName";
            //    DropDownList_supervisor.DataValueField = "SupervisorId";
            //    DropDownList_supervisor.DataBind();


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
    }
    }
