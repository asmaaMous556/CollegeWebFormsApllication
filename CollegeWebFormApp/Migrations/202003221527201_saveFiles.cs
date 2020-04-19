namespace CollegeWebFormApp.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class saveFiles : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Files", "UploadedfileByStudent", c => c.Binary());
            AddColumn("dbo.Files", "ContentType", c => c.String());
            AddColumn("dbo.Tasks", "SupervisorId", c => c.Int(nullable: false));
            AddColumn("dbo.Tasks", "AssigmentData", c => c.Binary());
            AddColumn("dbo.Tasks", "AgssigmentName", c => c.String());
            AddColumn("dbo.Tasks", "ContentType", c => c.String());
            AddColumn("dbo.Students", "AssigmentOfStudent", c => c.Binary());
            AddColumn("dbo.Students", "Date", c => c.DateTime(nullable: false));
            AddColumn("dbo.Repositories", "StudentId", c => c.Int(nullable: false));
            AddColumn("dbo.Repositories", "Date", c => c.DateTime(nullable: false));
        }
        
        public override void Down()
        {
            DropColumn("dbo.Repositories", "Date");
            DropColumn("dbo.Repositories", "StudentId");
            DropColumn("dbo.Students", "Date");
            DropColumn("dbo.Students", "AssigmentOfStudent");
            DropColumn("dbo.Tasks", "ContentType");
            DropColumn("dbo.Tasks", "AgssigmentName");
            DropColumn("dbo.Tasks", "AssigmentData");
            DropColumn("dbo.Tasks", "SupervisorId");
            DropColumn("dbo.Files", "ContentType");
            DropColumn("dbo.Files", "UploadedfileByStudent");
        }
    }
}
