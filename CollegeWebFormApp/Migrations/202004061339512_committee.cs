namespace CollegeWebFormApp.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class committee : DbMigration
    {
        public override void Up()
        {
            DropForeignKey("dbo.SupervisorEvaluations", "CId", "dbo.Coordinators");
            DropIndex("dbo.SupervisorEvaluations", new[] { "CId" });
        }
        
        public override void Down()
        {
            CreateIndex("dbo.SupervisorEvaluations", "CId");
            AddForeignKey("dbo.SupervisorEvaluations", "CId", "dbo.Coordinators", "CId", cascadeDelete: true);
        }
    }
}
