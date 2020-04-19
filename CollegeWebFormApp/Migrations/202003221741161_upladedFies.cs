namespace CollegeWebFormApp.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class upladedFies : DbMigration
    {
        public override void Up()
        {
            DropForeignKey("dbo.Files", "Coordinator_CId", "dbo.Coordinators");
           // DropForeignKey("dbo.Files", "Supervisor_SupervisorId", "dbo.Supervisors");
            DropIndex("dbo.Files", new[] { "Coordinator_CId" });
           // DropIndex("dbo.Files", new[] { "Supervisor_SupervisorId" });
           // AddColumn("dbo.Files", "SupervisorId", c => c.Int(nullable: false));
            CreateIndex("dbo.Files", "StudentId");
            AddForeignKey("dbo.Files", "StudentId", "dbo.Students", "StudentId", cascadeDelete: true);
            DropColumn("dbo.Files", "GroupId");
            DropColumn("dbo.Files", "uploadBy");
            DropColumn("dbo.Files", "FileContent");
            DropColumn("dbo.Files", "Coordinator_CId");
           // DropColumn("dbo.Files", "Supervisor_SupervisorId");
        }
        
        public override void Down()
        {
            //AddColumn("dbo.Files", "Supervisor_SupervisorId", c => c.Int());
            AddColumn("dbo.Files", "Coordinator_CId", c => c.Int());
            AddColumn("dbo.Files", "FileContent", c => c.String());
            AddColumn("dbo.Files", "uploadBy", c => c.Int(nullable: false));
            AddColumn("dbo.Files", "GroupId", c => c.Int(nullable: false));
            DropForeignKey("dbo.Files", "StudentId", "dbo.Students");
            DropIndex("dbo.Files", new[] { "StudentId" });
           // DropColumn("dbo.Files", "SupervisorId");
           // CreateIndex("dbo.Files", "Supervisor_SupervisorId");
            CreateIndex("dbo.Files", "Coordinator_CId");
           // AddForeignKey("dbo.Files", "Supervisor_SupervisorId", "dbo.Supervisors", "SupervisorId");
            AddForeignKey("dbo.Files", "Coordinator_CId", "dbo.Coordinators", "CId");
        }
    }
}
