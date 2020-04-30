namespace CollegeWebFormApp.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class superUpdate : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Supervisors", "phone", c => c.String());
        }
        
        public override void Down()
        {
            DropColumn("dbo.Supervisors", "phone");
        }
    }
}
