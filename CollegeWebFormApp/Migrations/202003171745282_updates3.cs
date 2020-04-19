namespace CollegeWebFormApp.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class updates3 : DbMigration
    {
        public override void Up()
        {
            AlterColumn("dbo.SupervisionGroups", "GroupName", c => c.String());
        }
        
        public override void Down()
        {
            AlterColumn("dbo.SupervisionGroups", "GroupName", c => c.Int(nullable: false));
        }
    }
}
