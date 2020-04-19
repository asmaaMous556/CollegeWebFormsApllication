namespace CollegeWebFormApp.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class superEvaluation : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.SupervisorEvaluations",
                c => new
                    {
                        ID = c.Int(nullable: false, identity: true),
                        state = c.String(),
                        comment = c.String(),
                        StudentId = c.Int(nullable: false),
                        SupervisorId = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.ID)
                .ForeignKey("dbo.Supervisors", t => t.SupervisorId, cascadeDelete: true)
                .Index(t => t.SupervisorId);
            
            AddColumn("dbo.Students", "DateOfEvaluation", c => c.DateTime(nullable: false));
            DropColumn("dbo.Students", "Date");
        }
        
        public override void Down()
        {
            AddColumn("dbo.Students", "Date", c => c.DateTime(nullable: false));
            DropForeignKey("dbo.SupervisorEvaluations", "SupervisorId", "dbo.Supervisors");
            DropIndex("dbo.SupervisorEvaluations", new[] { "SupervisorId" });
            DropColumn("dbo.Students", "DateOfEvaluation");
            DropTable("dbo.SupervisorEvaluations");
        }
    }
}
