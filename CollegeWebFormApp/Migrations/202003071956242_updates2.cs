namespace CollegeWebFormApp.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class updates2 : DbMigration
    {
        public override void Up()
        {
            AlterColumn("dbo.Events", "CId", c => c.Int());
            AlterColumn("dbo.FollowUps", "StudentId", c => c.Int());
        }
        
        public override void Down()
        {
            AlterColumn("dbo.FollowUps", "StudentId", c => c.Int(nullable: false));
            AlterColumn("dbo.Events", "CId", c => c.Int(nullable: false));
        }
    }
}
