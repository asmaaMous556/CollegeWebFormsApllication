namespace CollegeWebFormApp.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class updatestudent : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Students", "COIS342", c => c.String());
            AddColumn("dbo.Students", "COIT374", c => c.String());
            AddColumn("dbo.Students", "COIT415", c => c.String());
            AddColumn("dbo.Students", "hour", c => c.Int());
            AlterColumn("dbo.Students", "CellPhone", c => c.Int());
        }
        
        public override void Down()
        {
            AlterColumn("dbo.Students", "CellPhone", c => c.Int(nullable: false));
            DropColumn("dbo.Students", "hour");
            DropColumn("dbo.Students", "COIT415");
            DropColumn("dbo.Students", "COIT374");
            DropColumn("dbo.Students", "COIS342");
        }
    }
}
