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
    public partial class AddAssigmentPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack ) {
                FillGroupSToDDl();
               

            }
           // BindGrid();


        }


        private void BindGrid()
        {
            //var IdForSupervisor = Convert.ToInt32(Session["id"]);
            //string constr = ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString;
            //using (SqlConnection con = new SqlConnection(constr))
            //{
            //    using (SqlCommand cmd = new SqlCommand())
            //    {
            //        cmd.CommandText = $"select AgssigmentName,TaskId from Tasks where SupervisorId='{IdForSupervisor}'";
            //        cmd.Connection = con;
            //        con.Open();

            //        GridView1.DataSource = cmd.ExecuteReader();

            //        GridView1.DataBind();
            //        con.Close();
            //    }
            //}
        }



        private void FillGroupSToDDl()
        {
            var IdForSupervisor = Convert.ToInt32(Session["id"]);
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString);
            SqlCommand command = new SqlCommand();
            command.CommandText = $"select SupervisionGroups.GroupId,SupervisionGroups.GroupName from SupervisionGroups where Supervisor_SupervisorId = '{IdForSupervisor}'";
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

        protected void Upload(object sender, EventArgs e)
        {
            var IdForSupervisor = Convert.ToInt32(Session["id"]);
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
                        string query = $"insert into Tasks (TaskTitle,comment,durationDate,SupervisorId,AssigmentData,AgssigmentName,ContentType,GroupId) values (@TaskTitle,@comment,@durationDate,@SupervisorId,@AssigmentData,@AgssigmentName,@ContentType,@GroupId)";
                        using (SqlCommand cmd = new SqlCommand(query))
                        {
                            cmd.Connection = con;
                            cmd.Parameters.AddWithValue("@TaskTitle", TextBox_title.Text);
                            cmd.Parameters.AddWithValue("@comment", TextBox_comment.Text);
                            cmd.Parameters.AddWithValue("@durationDate",DateTime.Parse(TextBox_date.Text));
                            cmd.Parameters.AddWithValue("@SupervisorId", IdForSupervisor);

                            cmd.Parameters.AddWithValue("@AgssigmentName", FileName);
                            cmd.Parameters.AddWithValue("@ContentType", fileContent);
                            cmd.Parameters.AddWithValue("@AssigmentData", bytes);
                           
                            cmd.Parameters.AddWithValue("@GroupId", DropDownList_groups.SelectedValue.ToString());

                            con.Open();
                            cmd.ExecuteNonQuery();
                           
                            con.Close();
                           

                        }
                    }
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

                    cmd.CommandText = $" select AssigmentData,AgssigmentName,ContentType from Tasks where TaskId=@TaskId";
                    cmd.Parameters.AddWithValue("@TaskId", idForFile);
                    cmd.Connection = con;
                    con.Open();
                    using (SqlDataReader sdr = cmd.ExecuteReader())
                    {

                        sdr.Read();
                        bytes = (byte[])sdr["AssigmentData"];
                        contentType = sdr["ContentType"].ToString();
                        fileName = sdr["AgssigmentName"].ToString();


                    }

                    con.Close();
                }
             //  BindGrid();
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

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            var IdForSupervisor = Convert.ToInt32(Session["id"]);
            string constr = ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = $"select AgssigmentName,TaskId from Tasks where SupervisorId='{IdForSupervisor}'";
                    cmd.Connection = con;
                    con.Open();

                    GridView1.DataSource = cmd.ExecuteReader();

                    GridView1.DataBind();
                    con.Close();
                }
            }

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Calendar1.Visible = true;

        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            TextBox_date.Text = (Calendar1.SelectedDate.ToShortDateString()).ToString();
            Calendar1.Visible = false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewAssigmentSupervisor.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("SupervisorHomePage.aspx");
        }
    }
}


