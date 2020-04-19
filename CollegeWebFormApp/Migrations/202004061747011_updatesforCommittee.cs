namespace CollegeWebFormApp.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class updatesforCommittee : DbMigration
    {
        public override void Up()
        {
            DropForeignKey("dbo.CommitteTransactions", "Coordinator_CId", "dbo.Coordinators");
            DropIndex("dbo.CommitteTransactions", new[] { "Coordinator_CId" });
            CreateIndex("dbo.SupervisorEvaluations", "CId");
            AddForeignKey("dbo.SupervisorEvaluations", "CId", "dbo.Coordinators", "CId", cascadeDelete: true);
            DropColumn("dbo.CommitteTransactions", "Coordinator_CId");
        }
        
        public override void Down()
        {
            AddColumn("dbo.CommitteTransactions", "Coordinator_CId", c => c.Int());
            DropForeignKey("dbo.SupervisorEvaluations", "CId", "dbo.Coordinators");
            DropIndex("dbo.SupervisorEvaluations", new[] { "CId" });
            CreateIndex("dbo.CommitteTransactions", "Coordinator_CId");
            AddForeignKey("dbo.CommitteTransactions", "Coordinator_CId", "dbo.Coordinators", "CId");
        }
    }
}
