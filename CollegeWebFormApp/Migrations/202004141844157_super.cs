namespace CollegeWebFormApp.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class super : DbMigration
    {
        public override void Up()
        {
            DropColumn("dbo.Supervisors", "GroupId");
        }
        
        public override void Down()
        {
            AddColumn("dbo.Supervisors", "GroupId", c => c.Int(nullable: false));
        }
    }
}
