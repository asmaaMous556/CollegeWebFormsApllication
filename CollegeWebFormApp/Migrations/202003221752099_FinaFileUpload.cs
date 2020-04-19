namespace CollegeWebFormApp.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class FinaFileUpload : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Files", "GroupId", c => c.Int(nullable: false));
        }
        
        public override void Down()
        {
            DropColumn("dbo.Files", "GroupId");
        }
    }
}
