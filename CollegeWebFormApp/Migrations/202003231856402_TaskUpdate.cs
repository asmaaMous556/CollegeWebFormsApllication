namespace CollegeWebFormApp.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class TaskUpdate : DbMigration
    {
        public override void Up()
        {
            DropForeignKey("dbo.Tasks", "SerialNumId", "dbo.FollowUps");
            DropIndex("dbo.Tasks", new[] { "SerialNumId" });
            RenameColumn(table: "dbo.Tasks", name: "SerialNumId", newName: "FollowUp_SerialNumId");
            AlterColumn("dbo.Tasks", "FollowUp_SerialNumId", c => c.Int());
            CreateIndex("dbo.Tasks", "FollowUp_SerialNumId");
            AddForeignKey("dbo.Tasks", "FollowUp_SerialNumId", "dbo.FollowUps", "SerialNumId");
            DropColumn("dbo.Tasks", "taskassign");
        }
        
        public override void Down()
        {
            AddColumn("dbo.Tasks", "taskassign", c => c.String());
            DropForeignKey("dbo.Tasks", "FollowUp_SerialNumId", "dbo.FollowUps");
            DropIndex("dbo.Tasks", new[] { "FollowUp_SerialNumId" });
            AlterColumn("dbo.Tasks", "FollowUp_SerialNumId", c => c.Int(nullable: false));
            RenameColumn(table: "dbo.Tasks", name: "FollowUp_SerialNumId", newName: "SerialNumId");
            CreateIndex("dbo.Tasks", "SerialNumId");
            AddForeignKey("dbo.Tasks", "SerialNumId", "dbo.FollowUps", "SerialNumId", cascadeDelete: true);
        }
    }
}
