﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CollegeWebFormApp
{
    public partial class SuperEvaluationInCoor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            fillTransactionToGridView();

        }

        private void fillTransactionToGridView()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString);
            SqlCommand command = new SqlCommand();
            command.CommandText = $" select SupervisorName,EvaluationTransactions.SupervisorId,dateOfTransaction from  EvaluationTransactions,Supervisors where Supervisors.SupervisorId = EvaluationTransactions.SupervisorId";

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
            int idForSupervisor = int.Parse((sender as LinkButton).CommandArgument);

            Session["SupervisorId"] = idForSupervisor;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CollegeModel"].ConnectionString);
            SqlCommand command = new SqlCommand();
            command.CommandText = $" select SupervisorId  from EvaluationTransactions where SupervisorId=@SupervisorId ";
            command.Parameters.AddWithValue("@SupervisorId", idForSupervisor);



            command.Connection = con;


            try
            {
                con.Open();
                // idForStudent = Session("idForStudent").to;



            }

            catch (Exception)
            {
                throw;
            }

            finally
            {
                con.Close();
            }
            Response.Redirect("EvaluationSupervisorPage.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("MainOutComingTranCoor.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("CoordinatorHomePage.aspx");
        }
    }
}