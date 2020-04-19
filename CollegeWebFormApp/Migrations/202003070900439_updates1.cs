namespace CollegeWebFormApp.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class updates1 : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.FollowUps", "TaskTopic", c => c.String());
        }
        
        public override void Down()
        {
            DropColumn("dbo.FollowUps", "TaskTopic");
        }
    }
}
