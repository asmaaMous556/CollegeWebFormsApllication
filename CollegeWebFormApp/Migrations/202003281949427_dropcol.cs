namespace CollegeWebFormApp.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class dropcol : DbMigration
    {
        public override void Up()
        {
            DropColumn("dbo.SupervisionGroups", "StudentId");
        }
        
        public override void Down()
        {
            AddColumn("dbo.SupervisionGroups", "StudentId", c => c.Int(nullable: false));
        }
    }
}
