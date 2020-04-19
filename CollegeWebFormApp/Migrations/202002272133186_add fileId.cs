namespace CollegeWebFormApp.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class addfileId : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Coordinators",
                c => new
                    {
                        CId = c.Int(nullable: false, identity: true),
                        CName = c.String(),
                        password = c.String(),
                    })
                .PrimaryKey(t => t.CId);
            
            CreateTable(
                "dbo.Files",
                c => new
                    {
                        FileId = c.Int(nullable: false, identity: true),
                        File_name = c.String(),
                        description = c.String(),
                        uploadBy = c.Int(nullable: false),
                        Coordinator_CId = c.Int(),
                        Supervisor_SId = c.Int(),
                    })
                .PrimaryKey(t => t.FileId)
                .ForeignKey("dbo.Coordinators", t => t.Coordinator_CId)
                .ForeignKey("dbo.Supervisors", t => t.Supervisor_SId)
                .Index(t => t.Coordinator_CId)
                .Index(t => t.Supervisor_SId);
            
            CreateTable(
                "dbo.Transactions",
                c => new
                    {
                        SessionId = c.Int(nullable: false, identity: true),
                        SenderId = c.Int(nullable: false),
                        ReceiverId = c.Int(nullable: false),
                        content = c.String(),
                        time = c.DateTime(nullable: false),
                        type = c.String(),
                        Coordinator_CId = c.Int(),
                        Student_StudentId = c.Int(),
                        Supervisor_SId = c.Int(),
                    })
                .PrimaryKey(t => t.SessionId)
                .ForeignKey("dbo.Coordinators", t => t.Coordinator_CId)
                .ForeignKey("dbo.Students", t => t.Student_StudentId)
                .ForeignKey("dbo.Supervisors", t => t.Supervisor_SId)
                .Index(t => t.Coordinator_CId)
                .Index(t => t.Student_StudentId)
                .Index(t => t.Supervisor_SId);
            
            CreateTable(
                "dbo.Events",
                c => new
                    {
                        EventId = c.Int(nullable: false, identity: true),
                        TaskId = c.Int(nullable: false),
                        CId = c.Int(nullable: false),
                        Edate = c.DateTime(nullable: false),
                        EName = c.String(),
                        TaskDescription = c.String(),
                    })
                .PrimaryKey(t => t.EventId);
            
            CreateTable(
                "dbo.FollowUps",
                c => new
                    {
                        SerialNumId = c.Int(nullable: false, identity: true),
                        GroupId = c.Int(nullable: false),
                        Week = c.DateTime(nullable: false),
                        DueDate = c.DateTime(nullable: false),
                        TaskAssign = c.String(),
                        StId = c.Int(nullable: false),
                        Comment = c.String(),
                    })
                .PrimaryKey(t => t.SerialNumId)
                .ForeignKey("dbo.SupervisionGroups", t => t.GroupId, cascadeDelete: true)
                .Index(t => t.GroupId);
            
            CreateTable(
                "dbo.Tasks",
                c => new
                    {
                        TaskId = c.Int(nullable: false, identity: true),
                        TaskTitle = c.String(),
                        TaskDescription = c.String(),
                        FollowUp_SerialNumId = c.Int(),
                    })
                .PrimaryKey(t => t.TaskId)
                .ForeignKey("dbo.FollowUps", t => t.FollowUp_SerialNumId)
                .Index(t => t.FollowUp_SerialNumId);
            
            CreateTable(
                "dbo.Repositories",
                c => new
                    {
                        ProjectId = c.Int(nullable: false, identity: true),
                        ProjectTitle = c.String(),
                        File = c.String(),
                        Description = c.String(),
                        KnowledgeArea = c.String(),
                    })
                .PrimaryKey(t => t.ProjectId);
            
            CreateTable(
                "dbo.Students",
                c => new
                    {
                        StudentId = c.Int(nullable: false, identity: true),
                        StudentName = c.String(),
                        Email = c.String(),
                        Password = c.String(),
                        CellPhone = c.Int(nullable: false),
                        GroupId = c.Int(nullable: false),
                        TotalMark = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.StudentId)
                .ForeignKey("dbo.SupervisionGroups", t => t.GroupId, cascadeDelete: true)
                .Index(t => t.GroupId);
            
            CreateTable(
                "dbo.SupervisionGroups",
                c => new
                    {
                        GroupId = c.Int(nullable: false, identity: true),
                        projectTitle = c.String(),
                        StId = c.Int(nullable: false),
                        description = c.String(),
                        KnowledgeArea = c.String(),
                        Supervisor_SId = c.Int(),
                    })
                .PrimaryKey(t => t.GroupId)
                .ForeignKey("dbo.Supervisors", t => t.Supervisor_SId)
                .Index(t => t.Supervisor_SId);
            
            CreateTable(
                "dbo.Supervisors",
                c => new
                    {
                        SId = c.Int(nullable: false, identity: true),
                        SName = c.String(),
                        Password = c.String(),
                        Email = c.String(),
                        Department = c.String(),
                    })
                .PrimaryKey(t => t.SId);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Transactions", "Supervisor_SId", "dbo.Supervisors");
            DropForeignKey("dbo.SupervisionGroups", "Supervisor_SId", "dbo.Supervisors");
            DropForeignKey("dbo.Files", "Supervisor_SId", "dbo.Supervisors");
            DropForeignKey("dbo.Students", "GroupId", "dbo.SupervisionGroups");
            DropForeignKey("dbo.FollowUps", "GroupId", "dbo.SupervisionGroups");
            DropForeignKey("dbo.Transactions", "Student_StudentId", "dbo.Students");
            DropForeignKey("dbo.Tasks", "FollowUp_SerialNumId", "dbo.FollowUps");
            DropForeignKey("dbo.Transactions", "Coordinator_CId", "dbo.Coordinators");
            DropForeignKey("dbo.Files", "Coordinator_CId", "dbo.Coordinators");
            DropIndex("dbo.SupervisionGroups", new[] { "Supervisor_SId" });
            DropIndex("dbo.Students", new[] { "GroupId" });
            DropIndex("dbo.Tasks", new[] { "FollowUp_SerialNumId" });
            DropIndex("dbo.FollowUps", new[] { "GroupId" });
            DropIndex("dbo.Transactions", new[] { "Supervisor_SId" });
            DropIndex("dbo.Transactions", new[] { "Student_StudentId" });
            DropIndex("dbo.Transactions", new[] { "Coordinator_CId" });
            DropIndex("dbo.Files", new[] { "Supervisor_SId" });
            DropIndex("dbo.Files", new[] { "Coordinator_CId" });
            DropTable("dbo.Supervisors");
            DropTable("dbo.SupervisionGroups");
            DropTable("dbo.Students");
            DropTable("dbo.Repositories");
            DropTable("dbo.Tasks");
            DropTable("dbo.FollowUps");
            DropTable("dbo.Events");
            DropTable("dbo.Transactions");
            DropTable("dbo.Files");
            DropTable("dbo.Coordinators");
        }
    }
}
