namespace CollegeWebFormApp.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class _event : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Events", "EventName", c => c.String());
            AddColumn("dbo.Events", "EventDescription", c => c.String());
            DropColumn("dbo.Events", "EName");
            DropColumn("dbo.Events", "TaskDescription");
        }
        
        public override void Down()
        {
            AddColumn("dbo.Events", "TaskDescription", c => c.String());
            AddColumn("dbo.Events", "EName", c => c.String());
            DropColumn("dbo.Events", "EventDescription");
            DropColumn("dbo.Events", "EventName");
        }
    }
}
