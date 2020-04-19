namespace CollegeWebFormApp.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class updatesfinal : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.SupervisionGroups", "GroupName", c => c.Int(nullable: false));
            AddColumn("dbo.SupervisionGroups", "Task_TaskId", c => c.Int());
            CreateIndex("dbo.SupervisionGroups", "Task_TaskId");
            AddForeignKey("dbo.SupervisionGroups", "Task_TaskId", "dbo.Tasks", "TaskId");
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.SupervisionGroups", "Task_TaskId", "dbo.Tasks");
            DropIndex("dbo.SupervisionGroups", new[] { "Task_TaskId" });
            DropColumn("dbo.SupervisionGroups", "Task_TaskId");
            DropColumn("dbo.SupervisionGroups", "GroupName");
        }
    }
}
