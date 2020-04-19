namespace CollegeWebFormApp.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class task2Updates : DbMigration
    {
        public override void Up()
        {
            DropForeignKey("dbo.Tasks", "FollowUp_SerialNumId", "dbo.FollowUps");
            DropIndex("dbo.Tasks", new[] { "FollowUp_SerialNumId" });
            DropColumn("dbo.Tasks", "FollowUp_SerialNumId");
        }
        
        public override void Down()
        {
            AddColumn("dbo.Tasks", "FollowUp_SerialNumId", c => c.Int());
            CreateIndex("dbo.Tasks", "FollowUp_SerialNumId");
            AddForeignKey("dbo.Tasks", "FollowUp_SerialNumId", "dbo.FollowUps", "SerialNumId");
        }
    }
}
