namespace CollegeWebFormApp.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Tas4Update : DbMigration
    {
        public override void Up()
        {
            DropColumn("dbo.Events", "TaskId");
            DropColumn("dbo.Tasks", "SupervisorId");
            DropColumn("dbo.Tasks", "GroupId");
        }
        
        public override void Down()
        {
            AddColumn("dbo.Tasks", "GroupId", c => c.Int(nullable: false));
            AddColumn("dbo.Tasks", "SupervisorId", c => c.Int(nullable: false));
            AddColumn("dbo.Events", "TaskId", c => c.Int(nullable: false));
        }
    }
}
