namespace CollegeWebFormApp.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Task5Update : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Tasks", "SupervisorId", c => c.Int(nullable: false));
            AddColumn("dbo.Tasks", "GroupId", c => c.Int(nullable: false));
        }
        
        public override void Down()
        {
            DropColumn("dbo.Tasks", "GroupId");
            DropColumn("dbo.Tasks", "SupervisorId");
        }
    }
}
