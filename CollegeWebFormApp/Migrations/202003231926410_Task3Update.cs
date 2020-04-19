namespace CollegeWebFormApp.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Task3Update : DbMigration
    {
        public override void Up()
        {
            DropForeignKey("dbo.SupervisionGroups", "Task_TaskId", "dbo.Tasks");
            DropIndex("dbo.SupervisionGroups", new[] { "Task_TaskId" });
            CreateTable(
                "dbo.TaskSupervisionGroups",
                c => new
                    {
                        Task_TaskId = c.Int(nullable: false),
                        SupervisionGroup_GroupId = c.Int(nullable: false),
                    })
                .PrimaryKey(t => new { t.Task_TaskId, t.SupervisionGroup_GroupId })
                .ForeignKey("dbo.Tasks", t => t.Task_TaskId, cascadeDelete: true)
                .ForeignKey("dbo.SupervisionGroups", t => t.SupervisionGroup_GroupId, cascadeDelete: true)
                .Index(t => t.Task_TaskId)
                .Index(t => t.SupervisionGroup_GroupId);
            
            AddColumn("dbo.Tasks", "GroupId", c => c.Int(nullable: false));
            DropColumn("dbo.SupervisionGroups", "Task_TaskId");
        }
        
        public override void Down()
        {
            AddColumn("dbo.SupervisionGroups", "Task_TaskId", c => c.Int());
            DropForeignKey("dbo.TaskSupervisionGroups", "SupervisionGroup_GroupId", "dbo.SupervisionGroups");
            DropForeignKey("dbo.TaskSupervisionGroups", "Task_TaskId", "dbo.Tasks");
            DropIndex("dbo.TaskSupervisionGroups", new[] { "SupervisionGroup_GroupId" });
            DropIndex("dbo.TaskSupervisionGroups", new[] { "Task_TaskId" });
            DropColumn("dbo.Tasks", "GroupId");
            DropTable("dbo.TaskSupervisionGroups");
            CreateIndex("dbo.SupervisionGroups", "Task_TaskId");
            AddForeignKey("dbo.SupervisionGroups", "Task_TaskId", "dbo.Tasks", "TaskId");
        }
    }
}
