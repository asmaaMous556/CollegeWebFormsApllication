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
    public partial class ViewAssigmentSupervisor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack )
            {
                FillGroupSToDDl();

                FillStudentToDDl();

            }
           // BindGrid();

        }

        private void BindGrid()
        {
           // var idOfStudent = Convert.ToInt32(Session["id"]);
            
        }

       

        private void FillGroupSToDDl()
        {
            var IdForSupervisor = Convert.ToInt32(Session["id"]);
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString);
            SqlCommand command = new SqlCommand();
            command.CommandText = $"select GroupId,GroupName,Supervisor_SupervisorId from SupervisionGroups where Supervisor_SupervisorId='{IdForSupervisor}'";
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




        private void FillStudentToDDl()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString);
            SqlCommand command = new SqlCommand();
            command.CommandText = $"select  StudentName,StudentId from  Students where Students.GroupId = '{DropDownList_groups.SelectedValue.ToString()}'";
            command.Connection = con;

            try
            {
                con.Open();

                SqlDataReader dr = command.ExecuteReader();
                DropDownList_student.DataSource = dr;
                DropDownList_student.DataTextField = "StudentName";
                DropDownList_student.DataValueField = "StudentId";
                DropDownList_student.DataBind();


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

        protected void Send(object sender, EventArgs e)
        {

            int idForFile = int.Parse((sender as LinkButton).CommandArgument);
            var IdForSupervisor = Convert.ToInt32(Session["id"]);

            byte[] bytes;
            string fileName, contentType;
            DateTime date;
            string constr = ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand())
                {

                    cmd.CommandText = $"select File_name, UploadedfileByStudent, ContentType ,date,Supervisor_SupervisorId from Files  where FileId=@id ";
                    cmd.Parameters.AddWithValue("@id", idForFile);
                    cmd.Connection = con;
                    con.Open();
                    using (SqlDataReader sdr = cmd.ExecuteReader())
                    {

                        sdr.Read();

                        //bytes = (byte[])sdr["Data"];
                        bytes = (byte[])sdr["UploadedfileByStudent"];
                        contentType = sdr["ContentType"].ToString();
                        fileName = sdr["File_name"].ToString();
                        date =(DateTime) sdr["date"];

                        cmd.CommandText = $" insert into CurrentProjects (FileId,FileName,Data,ContentType,date,SupervisorId)values(@FileId,@FileName,@Data,@ContentType,@date,@SupervisorId)";
                        cmd.Parameters.AddWithValue("@FileId", idForFile);
                        cmd.Parameters.AddWithValue("@FileName", fileName);
                        cmd.Parameters.AddWithValue("@Data", bytes);
                        cmd.Parameters.AddWithValue("@ContentType", contentType);
                        cmd.Parameters.AddWithValue("@date", date);
                        cmd.Parameters.AddWithValue("@SupervisorId", IdForSupervisor);

                       

                    }

                    cmd.ExecuteNonQuery();
                    con.Close();



                }
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList_groups_SelectedIndexChanged(object sender, EventArgs e)
        {

            ////SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString);
            ////SqlCommand command = new SqlCommand();
            ////command.CommandText = $"select StudentName,StudentId,GroupId from Students where GroupId='{DropDownList_groups.SelectedValue.ToString()}'";
            ////command.Connection = con;

            ////try
            ////{
            ////    con.Open();

            ////    SqlDataReader dr = command.ExecuteReader();
            ////    DropDownList_student.DataSource = dr;
            ////    DropDownList_student.DataTextField = "StudentName";
            ////    DropDownList_student.DataValueField = "StudentId";
            ////    DropDownList_student.DataBind();


            ////}
            ////catch (Exception)
            ////{
            ////    throw;
            ////}

            ////finally
            ////{
            ////    con.Close();

            ////}

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("SupervisorHomePage.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddAssigmentPage.aspx");
        }

        protected void DropDownList_student_SelectedIndexChanged(object sender, EventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = $" select File_name,StudentName,FileId,date from Files,Students where Students.studentId =Files.StudentId and Files.StudentId = '{DropDownList_student.SelectedValue.ToString()}'";
                    cmd.Connection = con;
                    con.Open();
                    GridView1.DataSource = cmd.ExecuteReader();
                    GridView1.DataBind();
                    con.Close();
                }
            }

        }
    }
}