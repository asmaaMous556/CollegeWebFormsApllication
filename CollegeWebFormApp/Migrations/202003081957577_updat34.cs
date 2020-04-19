namespace CollegeWebFormApp.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class updat34 : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Repositories", "File_Name", c => c.String());
            DropColumn("dbo.Repositories", "File");
        }
        
        public override void Down()
        {
            AddColumn("dbo.Repositories", "File", c => c.String());
            DropColumn("dbo.Repositories", "File_Name");
        }
    }
}
