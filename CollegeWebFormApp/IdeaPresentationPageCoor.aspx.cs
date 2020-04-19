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
    public partial class IdeaPresentationPageCoor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            FillDataToTextBoxs();
            FillStatesToDDL();
        }

        private void FillStatesToDDL()
        {
            //string[] states=[{"--Select--", "Approved", "Accept", "Review" }

            // DropDownList1.DataSource = 
            if (DropDownList1.SelectedValue == "-1")
            {
                Response.Write("Please select a state!");

            }

            DropDownList1.DataValueField =DropDownList1.SelectedIndex.ToString();
            DropDownList1.DataTextField = DropDownList1.SelectedItem.ToString();
            DropDownList1.DataBind();
        }

        private void FillDataToTextBoxs()
        {

            var ProjectId = Convert.ToInt32(Session["ProjectId"]);
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString);
            SqlCommand comman = new SqlCommand();
            comman.CommandText = $" select StudentName, CellPhone, Students.Email,ProjectTitle,KnowledgeArea,Description,Students.GroupId,SupervisorName,Repositories.StudentId from Students,Repositories,Supervisors where students.StudentId = Repositories.StudentId and Supervisors.GroupId = Students.GroupId and ProjectId=@ProjectId";
            comman.Connection = con;

           
            //TextBox_studnetName.Text=  "StudentName".ToString();
            //TextBox_cellphone.Text = " CellPhone".ToString();

            //TextBox_email.Text = "Students.Email".ToString();
            //TextBox_groupId.Text = "Students.GroupId".ToString();
            //TextBox_title.Text = "ProjectTitle".ToString();
            //TextBox_desription.Text = "Description".ToString();
            //TextBox_id.Text = "StudentId".ToString();


            comman.Parameters.AddWithValue("@ProjectId", ProjectId);

            //comman.Parameters.AddWithValue("ProjectTitle", TextBox_title.Text);
            //comman.Parameters.AddWithValue("Description", TextBox_desription.Text);
            //comman.Parameters.AddWithValue("KnowledgeArea", TextBox_area.Text);
            //comman.Parameters.AddWithValue("StudentId", TextBox_id.Text);
           // comman.Parameters.AddWithValue("date", );


           
                con.Open();

                SqlDataReader dr = comman.ExecuteReader();
                while (dr.Read())
                {
                    TextBox_studnetName.Text = dr.GetValue(0).ToString();
                    TextBox_cellphone.Text = dr.GetValue(1).ToString();
                    TextBox_email.Text = dr.GetValue(2).ToString();
                    TextBox_title.Text = dr.GetValue(3).ToString();
                    TextBox_area.Text = dr.GetValue(4).ToString();
                    TextBox_desription.Text = dr.GetValue(5).ToString();
                    TextBox_groupId.Text = dr.GetValue(6).ToString();
                    TextBox_super.Text = dr.GetValue(7).ToString();
                    TextBox_id.Text = dr.GetValue(8).ToString();



                }

            con.Close();

            // comman.ExecuteNonQuery();

            //catch (Exception)
            //{
            //    throw;
            //}

            //finally
            //{

            //}

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            var CId = Convert.ToInt32(Session["CId"]);
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString);
            SqlCommand comman = new SqlCommand();
            
            comman.CommandText = $" insert into Idea_Presentation (CId,StudentId,ProjectTitle,Comment,State) values(@CId, @StudentId, @ProjectTitle, @Comment, @State) ";
            comman.Parameters.AddWithValue("@ProjectTitle", TextBox_title.Text);
            comman.Parameters.AddWithValue("@StudentId",TextBox_id.Text );
            comman.Parameters.AddWithValue("@Comment",TextBox_comment.Text);
            comman.Parameters.AddWithValue("@State", DropDownList1.SelectedItem.ToString());
            comman.Parameters.AddWithValue("@CId", CId);

            comman.Connection = con;
            try
            {
                con.Open();
                 comman.ExecuteNonQuery();
            }
            catch (Exception)
            {
                throw;
            }

            finally
            {
                con.Close();

            }
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Sent!');", true);



        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("OutComingTransactionCoor.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("CoordinatorHomePage.aspx");
        }
    }
    }
