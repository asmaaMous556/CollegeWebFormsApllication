namespace CollegeWebFormApp.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class removeDesription : DbMigration
    {
        public override void Up()
        {
            DropColumn("dbo.Files", "description");
        }
        
        public override void Down()
        {
            AddColumn("dbo.Files", "description", c => c.String());
        }
    }
}
