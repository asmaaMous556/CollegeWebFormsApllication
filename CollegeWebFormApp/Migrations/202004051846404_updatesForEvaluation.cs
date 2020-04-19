namespace CollegeWebFormApp.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class updatesForEvaluation : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.EvaluationTransactions",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        StudentId = c.Int(nullable: false),
                        SupervisorId = c.Int(nullable: false),
                        dateOfTransaction = c.DateTime(nullable: false),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.Students", t => t.StudentId, cascadeDelete: true)
                .ForeignKey("dbo.Supervisors", t => t.SupervisorId, cascadeDelete: true)
                .Index(t => t.StudentId)
                .Index(t => t.SupervisorId);
            
            DropColumn("dbo.Repositories", "FileId");
            DropColumn("dbo.Repositories", "File_Name");
            DropColumn("dbo.Students", "DateOfEvaluation");
        }
        
        public override void Down()
        {
            AddColumn("dbo.Students", "DateOfEvaluation", c => c.DateTime(nullable: false));
            AddColumn("dbo.Repositories", "File_Name", c => c.String());
            AddColumn("dbo.Repositories", "FileId", c => c.Int(nullable: false));
            DropForeignKey("dbo.EvaluationTransactions", "SupervisorId", "dbo.Supervisors");
            DropForeignKey("dbo.EvaluationTransactions", "StudentId", "dbo.Students");
            DropIndex("dbo.EvaluationTransactions", new[] { "SupervisorId" });
            DropIndex("dbo.EvaluationTransactions", new[] { "StudentId" });
            DropTable("dbo.EvaluationTransactions");
        }
    }
}
