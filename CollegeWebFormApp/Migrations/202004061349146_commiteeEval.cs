namespace CollegeWebFormApp.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class commiteeEval : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.CommitteEvaluations",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        state = c.String(),
                        comment = c.String(),
                        StudentId = c.Int(nullable: false),
                        SupervisorId = c.Int(nullable: false),
                        CId = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.Coordinators", t => t.CId, cascadeDelete: true)
                .ForeignKey("dbo.Supervisors", t => t.SupervisorId, cascadeDelete: true)
                .Index(t => t.SupervisorId)
                .Index(t => t.CId);
            
            CreateTable(
                "dbo.CommitteTransactions",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        StudentId = c.Int(nullable: false),
                        SupervisorId = c.Int(nullable: false),
                        dateOfTransaction = c.DateTime(nullable: false),
                        Coordinator_CId = c.Int(),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.Coordinators", t => t.Coordinator_CId)
                .ForeignKey("dbo.Supervisors", t => t.SupervisorId, cascadeDelete: true)
                .Index(t => t.SupervisorId)
                .Index(t => t.Coordinator_CId);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.CommitteTransactions", "SupervisorId", "dbo.Supervisors");
            DropForeignKey("dbo.CommitteEvaluations", "SupervisorId", "dbo.Supervisors");
            DropForeignKey("dbo.CommitteTransactions", "Coordinator_CId", "dbo.Coordinators");
            DropForeignKey("dbo.CommitteEvaluations", "CId", "dbo.Coordinators");
            DropIndex("dbo.CommitteTransactions", new[] { "Coordinator_CId" });
            DropIndex("dbo.CommitteTransactions", new[] { "SupervisorId" });
            DropIndex("dbo.CommitteEvaluations", new[] { "CId" });
            DropIndex("dbo.CommitteEvaluations", new[] { "SupervisorId" });
            DropTable("dbo.CommitteTransactions");
            DropTable("dbo.CommitteEvaluations");
        }
    }
}
