namespace CollegeWebFormApp.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class currentProjectUpdate : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.CurrentProjects",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        FileId = c.Int(nullable: false),
                        FileName = c.String(),
                        Data = c.Binary(),
                        ContentType = c.String(),
                        date = c.DateTime(nullable: false),
                        SupervisorId = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.Supervisors", t => t.SupervisorId, cascadeDelete: true)
                .Index(t => t.SupervisorId);
            
            AddColumn("dbo.Files", "CurrentProject_Id", c => c.Int());
            CreateIndex("dbo.Files", "CurrentProject_Id");
            AddForeignKey("dbo.Files", "CurrentProject_Id", "dbo.CurrentProjects", "Id");
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.CurrentProjects", "SupervisorId", "dbo.Supervisors");
            DropForeignKey("dbo.Files", "CurrentProject_Id", "dbo.CurrentProjects");
            DropIndex("dbo.CurrentProjects", new[] { "SupervisorId" });
            DropIndex("dbo.Files", new[] { "CurrentProject_Id" });
            DropColumn("dbo.Files", "CurrentProject_Id");
            DropTable("dbo.CurrentProjects");
        }
    }
}
