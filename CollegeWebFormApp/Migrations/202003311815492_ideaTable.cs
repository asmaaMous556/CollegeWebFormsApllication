namespace CollegeWebFormApp.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class ideaTable : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Idea_Presentation",
                c => new
                    {
                        ID = c.Int(nullable: false, identity: true),
                        CId = c.Int(nullable: false),
                        StudentId = c.Int(nullable: false),
                        ProjectTitle = c.String(),
                        Comment = c.String(),
                        State = c.String(),
                    })
                .PrimaryKey(t => t.ID)
                .ForeignKey("dbo.Coordinators", t => t.CId, cascadeDelete: true)
                .ForeignKey("dbo.Students", t => t.StudentId, cascadeDelete: true)
                .Index(t => t.CId)
                .Index(t => t.StudentId);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Idea_Presentation", "StudentId", "dbo.Students");
            DropForeignKey("dbo.Idea_Presentation", "CId", "dbo.Coordinators");
            DropIndex("dbo.Idea_Presentation", new[] { "StudentId" });
            DropIndex("dbo.Idea_Presentation", new[] { "CId" });
            DropTable("dbo.Idea_Presentation");
        }
    }
}
