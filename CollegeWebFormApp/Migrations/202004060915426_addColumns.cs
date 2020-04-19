namespace CollegeWebFormApp.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class addColumns : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.SupervisorEvaluations", "CId", c => c.Int(nullable: false));
            CreateIndex("dbo.SupervisorEvaluations", "CId");
            AddForeignKey("dbo.SupervisorEvaluations", "CId", "dbo.Coordinators", "CId", cascadeDelete: true);
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.SupervisorEvaluations", "CId", "dbo.Coordinators");
            DropIndex("dbo.SupervisorEvaluations", new[] { "CId" });
            DropColumn("dbo.SupervisorEvaluations", "CId");
        }
    }
}
