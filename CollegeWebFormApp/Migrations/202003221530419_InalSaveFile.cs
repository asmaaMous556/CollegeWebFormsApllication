namespace CollegeWebFormApp.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class InalSaveFile : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Files", "StudentId", c => c.Int(nullable: false));
        }
        
        public override void Down()
        {
            DropColumn("dbo.Files", "StudentId");
        }
    }
}
