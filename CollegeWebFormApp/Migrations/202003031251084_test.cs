namespace CollegeWebFormApp.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class test : DbMigration
    {
        public override void Up()
        {
            DropForeignKey("dbo.Tasks", "FollowUp_SerialNumId", "dbo.FollowUps");
            DropForeignKey("dbo.Transactions", "Student_StudentId", "dbo.Students");
            DropForeignKey("dbo.Students", "GroupId", "dbo.SupervisionGroups");
            DropIndex("dbo.Transactions", new[] { "Student_StudentId" });
            DropIndex("dbo.Tasks", new[] { "FollowUp_SerialNumId" });
            DropIndex("dbo.Students", new[] { "GroupId" });
            RenameColumn(table: "dbo.Tasks", name: "FollowUp_SerialNumId", newName: "SerialNumId");
            RenameColumn(table: "dbo.Transactions", name: "Student_StudentId", newName: "StudentId");
            AddColumn("dbo.Files", "GroupId", c => c.Int(nullable: false));
            AddColumn("dbo.Files", "FileContent", c => c.String());
            AddColumn("dbo.FollowUps", "StudentId", c => c.Int(nullable: false));
            AddColumn("dbo.Repositories", "FileId", c => c.Int(nullable: false));
            AddColumn("dbo.SupervisionGroups", "StudentId", c => c.Int(nullable: false));
            AddColumn("dbo.Supervisors", "GroupId", c => c.Int(nullable: false));
            AlterColumn("dbo.Transactions", "StudentId", c => c.Int(nullable: false));
            AlterColumn("dbo.Tasks", "SerialNumId", c => c.Int(nullable: false));
            AlterColumn("dbo.Students", "GroupId", c => c.Int());
            AlterColumn("dbo.Students", "TotalMark", c => c.Int());
            CreateIndex("dbo.Transactions", "StudentId");
            CreateIndex("dbo.Tasks", "SerialNumId");
            CreateIndex("dbo.Students", "GroupId");
            AddForeignKey("dbo.Tasks", "SerialNumId", "dbo.FollowUps", "SerialNumId", cascadeDelete: true);
            AddForeignKey("dbo.Transactions", "StudentId", "dbo.Students", "StudentId", cascadeDelete: true);
            AddForeignKey("dbo.Students", "GroupId", "dbo.SupervisionGroups", "GroupId");
            DropColumn("dbo.FollowUps", "StId");
            DropColumn("dbo.SupervisionGroups", "StId");
        }
        
        public override void Down()
        {
            AddColumn("dbo.SupervisionGroups", "StId", c => c.Int(nullable: false));
            AddColumn("dbo.FollowUps", "StId", c => c.Int(nullable: false));
            DropForeignKey("dbo.Students", "GroupId", "dbo.SupervisionGroups");
            DropForeignKey("dbo.Transactions", "StudentId", "dbo.Students");
            DropForeignKey("dbo.Tasks", "SerialNumId", "dbo.FollowUps");
            DropIndex("dbo.Students", new[] { "GroupId" });
            DropIndex("dbo.Tasks", new[] { "SerialNumId" });
            DropIndex("dbo.Transactions", new[] { "StudentId" });
            AlterColumn("dbo.Students", "TotalMark", c => c.Int(nullable: false));
            AlterColumn("dbo.Students", "GroupId", c => c.Int(nullable: false));
            AlterColumn("dbo.Tasks", "SerialNumId", c => c.Int());
            AlterColumn("dbo.Transactions", "StudentId", c => c.Int());
            DropColumn("dbo.Supervisors", "GroupId");
            DropColumn("dbo.SupervisionGroups", "StudentId");
            DropColumn("dbo.Repositories", "FileId");
            DropColumn("dbo.FollowUps", "StudentId");
            DropColumn("dbo.Files", "FileContent");
            DropColumn("dbo.Files", "GroupId");
            RenameColumn(table: "dbo.Transactions", name: "StudentId", newName: "Student_StudentId");
            RenameColumn(table: "dbo.Tasks", name: "SerialNumId", newName: "FollowUp_SerialNumId");
            CreateIndex("dbo.Students", "GroupId");
            CreateIndex("dbo.Tasks", "FollowUp_SerialNumId");
            CreateIndex("dbo.Transactions", "Student_StudentId");
            AddForeignKey("dbo.Students", "GroupId", "dbo.SupervisionGroups", "GroupId", cascadeDelete: true);
            AddForeignKey("dbo.Transactions", "Student_StudentId", "dbo.Students", "StudentId");
            AddForeignKey("dbo.Tasks", "FollowUp_SerialNumId", "dbo.FollowUps", "SerialNumId");
        }
    }
}
