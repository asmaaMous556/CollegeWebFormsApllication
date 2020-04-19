using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CollegeWebFormApp
{
    public partial class ProposedIdeaCoordinator : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               BindGrid();
            }

        }

        protected void BindGrid()
        {
            string[] filePaths = Directory.GetFiles(Server.MapPath("~/Ideas/"));
            List<ListItem> files = new List<ListItem>();
            foreach (string filePath in filePaths)
            {
                files.Add(new ListItem(Path.GetFileName(filePath), filePath));
            }
            GridView1.DataSource = files;
            GridView1.DataBind();

        }
        //    DataTable table = new DataTable();
        //    table.Columns.Add("Proposed Ideas", typeof(string));
        //    table.Columns.Add("Options", typeof(string));

        //    foreach (string strFile in Directory.GetFiles(Server.MapPath("~/Ideas/")))
        //    {
        //        FileInfo inf = new FileInfo(strFile);

        //        table.Rows.Add(inf.Name);

        //    }
          
        

        protected void Button_upload_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(Server.MapPath("~/Ideas/") + FileUpload1.FileName);
               BindGrid();
            }

            else
            {
                Response.Write("Please select file to upload");
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {


        }

        protected void DownloadFile(object sender, EventArgs e)
        {
            string filePath = (sender as LinkButton).CommandArgument;
            Response.ContentType = ContentType;
            Response.AppendHeader("Content-Disposition", "attachment; filename=" + Path.GetFileName(filePath));
            Response.WriteFile(filePath);
            Response.End();
        }

        protected void DeleteFile(object sender, EventArgs e)
        {
            string filePath = (sender as LinkButton).CommandArgument;
            File.Delete(filePath);
            BindGrid();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("CoordinatorHomePage.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("TemplatesCoordinator.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("GuidelinesCoordinator.aspx");
        }
    }
}