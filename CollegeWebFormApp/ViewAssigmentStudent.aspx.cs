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
    public partial class ViewAssigmentStudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false) {
                FillGroupSToDDl();
               
                FillSupervisorsToDDl();
                
            }
            BindGrid();






        }

        private void FillSupervisorsToDDl()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString);
            SqlCommand command = new SqlCommand();
            command.CommandText = $"select SupervisorName,SupervisorId,SupervisionGroups.GroupId from SupervisionGroups, Supervisors where SupervisionGroups.Supervisor_SupervisorId = Supervisors.SupervisorId and SupervisionGroups.GroupId = '{DropDownList_groups.SelectedValue.ToString()}'";
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

        private void BindGrid()
        {
            string constr = ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = $" select AgssigmentName,durationDate,TaskId from Tasks where SupervisorId='{DropDownList_supervisors.SelectedValue.ToString()}' and GroupId='{DropDownList_groups.SelectedValue.ToString()}' ";
                    cmd.Connection = con;
                    con.Open();
                    GridView1.DataSource = cmd.ExecuteReader();
                    GridView1.DataBind();
                    con.Close();
                }
            }

        }

        private void FillGroupSToDDl()
        {
            var idOfStudent = Convert.ToInt32(Session["id"]);
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString);
            SqlCommand command = new SqlCommand();
            command.CommandText = $"select SupervisionGroups.GroupId,SupervisionGroups.GroupName from SupervisionGroups,Students where Students.GroupId = SupervisionGroups.GroupId and StudentId ='{idOfStudent}'";
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

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString);
            SqlCommand command = new SqlCommand();
            command.CommandText = $" select SupervisorName,SupervisorId,GroupId from Supervisors where GroupId='{DropDownList_groups.SelectedValue.ToString()}'";
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

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("SubmitAssigmentStudent.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("StudentHomePage.aspx");
        }
    }
    }