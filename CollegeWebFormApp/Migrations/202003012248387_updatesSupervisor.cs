namespace CollegeWebFormApp.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class updatesSupervisor : DbMigration
    {
        public override void Up()
        {
            DropForeignKey("dbo.Tasks", "FollowUp_SerialNumId", "dbo.FollowUps");
            DropForeignKey("dbo.Transactions", "Student_StudentId", "dbo.Students");
            DropForeignKey("dbo.Students", "GroupId", "dbo.SupervisionGroups");
            DropForeignKey("dbo.Files", "Supervisor_SId", "dbo.Supervisors");
            DropForeignKey("dbo.SupervisionGroups", "Supervisor_SId", "dbo.Supervisors");
            DropForeignKey("dbo.Transactions", "Supervisor_SId", "dbo.Supervisors");
            DropIndex("dbo.Transactions", new[] { "Student_StudentId" });
            DropIndex("dbo.Tasks", new[] { "FollowUp_SerialNumId" });
            DropIndex("dbo.Students", new[] { "GroupId" });
            RenameColumn(table: "dbo.Tasks", name: "FollowUp_SerialNumId", newName: "SerialNumId");
            RenameColumn(table: "dbo.Transactions", name: "Student_StudentId", newName: "StudentId");
            RenameColumn(table: "dbo.Files", name: "Supervisor_SId", newName: "Supervisor_SupervisorId");
            RenameColumn(table: "dbo.SupervisionGroups", name: "Supervisor_SId", newName: "Supervisor_SupervisorId");
            RenameColumn(table: "dbo.Transactions", name: "Supervisor_SId", newName: "Supervisor_SupervisorId");
            RenameIndex(table: "dbo.Files", name: "IX_Supervisor_SId", newName: "IX_Supervisor_SupervisorId");
            RenameIndex(table: "dbo.Transactions", name: "IX_Supervisor_SId", newName: "IX_Supervisor_SupervisorId");
            RenameIndex(table: "dbo.SupervisionGroups", name: "IX_Supervisor_SId", newName: "IX_Supervisor_SupervisorId");
            DropPrimaryKey("dbo.Supervisors");
            AddColumn("dbo.Files", "GroupId", c => c.Int(nullable: false));
            AddColumn("dbo.FollowUps", "StudentId", c => c.Int(nullable: false));
            AddColumn("dbo.Repositories", "FileId", c => c.Int(nullable: false));
            AddColumn("dbo.SupervisionGroups", "StudentId", c => c.Int(nullable: false));
            AddColumn("dbo.Supervisors", "SupervisorId", c => c.Int(nullable: false, identity: true));
            AddColumn("dbo.Supervisors", "SupervisorName", c => c.String());
            AddColumn("dbo.Supervisors", "GroupId", c => c.Int(nullable: false));
            AlterColumn("dbo.Transactions", "StudentId", c => c.Int(nullable: false));
            AlterColumn("dbo.Tasks", "SerialNumId", c => c.Int(nullable: false));
            AlterColumn("dbo.Students", "GroupId", c => c.Int());
            AlterColumn("dbo.Students", "TotalMark", c => c.Int());
            AddPrimaryKey("dbo.Supervisors", "SupervisorId");
            CreateIndex("dbo.Transactions", "StudentId");
            CreateIndex("dbo.Tasks", "SerialNumId");
            CreateIndex("dbo.Students", "GroupId");
            AddForeignKey("dbo.Tasks", "SerialNumId", "dbo.FollowUps", "SerialNumId", cascadeDelete: true);
            AddForeignKey("dbo.Transactions", "StudentId", "dbo.Students", "StudentId", cascadeDelete: true);
            AddForeignKey("dbo.Students", "GroupId", "dbo.SupervisionGroups", "GroupId");
            AddForeignKey("dbo.Files", "Supervisor_SupervisorId", "dbo.Supervisors", "SupervisorId");
            AddForeignKey("dbo.SupervisionGroups", "Supervisor_SupervisorId", "dbo.Supervisors", "SupervisorId");
            AddForeignKey("dbo.Transactions", "Supervisor_SupervisorId", "dbo.Supervisors", "SupervisorId");
            DropColumn("dbo.FollowUps", "StId");
            DropColumn("dbo.SupervisionGroups", "StId");
            DropColumn("dbo.Supervisors", "SId");
            DropColumn("dbo.Supervisors", "SName");
        }
        
        public override void Down()
        {
            AddColumn("dbo.Supervisors", "SName", c => c.String());
            AddColumn("dbo.Supervisors", "SId", c => c.Int(nullable: false, identity: true));
            AddColumn("dbo.SupervisionGroups", "StId", c => c.Int(nullable: false));
            AddColumn("dbo.FollowUps", "StId", c => c.Int(nullable: false));
            DropForeignKey("dbo.Transactions", "Supervisor_SupervisorId", "dbo.Supervisors");
            DropForeignKey("dbo.SupervisionGroups", "Supervisor_SupervisorId", "dbo.Supervisors");
            DropForeignKey("dbo.Files", "Supervisor_SupervisorId", "dbo.Supervisors");
            DropForeignKey("dbo.Students", "GroupId", "dbo.SupervisionGroups");
            DropForeignKey("dbo.Transactions", "StudentId", "dbo.Students");
            DropForeignKey("dbo.Tasks", "SerialNumId", "dbo.FollowUps");
            DropIndex("dbo.Students", new[] { "GroupId" });
            DropIndex("dbo.Tasks", new[] { "SerialNumId" });
            DropIndex("dbo.Transactions", new[] { "StudentId" });
            DropPrimaryKey("dbo.Supervisors");
            AlterColumn("dbo.Students", "TotalMark", c => c.Int(nullable: false));
            AlterColumn("dbo.Students", "GroupId", c => c.Int(nullable: false));
            AlterColumn("dbo.Tasks", "SerialNumId", c => c.Int());
            AlterColumn("dbo.Transactions", "StudentId", c => c.Int());
            DropColumn("dbo.Supervisors", "GroupId");
            DropColumn("dbo.Supervisors", "SupervisorName");
            DropColumn("dbo.Supervisors", "SupervisorId");
            DropColumn("dbo.SupervisionGroups", "StudentId");
            DropColumn("dbo.Repositories", "FileId");
            DropColumn("dbo.FollowUps", "StudentId");
            DropColumn("dbo.Files", "GroupId");
            AddPrimaryKey("dbo.Supervisors", "SId");
            RenameIndex(table: "dbo.SupervisionGroups", name: "IX_Supervisor_SupervisorId", newName: "IX_Supervisor_SId");
            RenameIndex(table: "dbo.Transactions", name: "IX_Supervisor_SupervisorId", newName: "IX_Supervisor_SId");
            RenameIndex(table: "dbo.Files", name: "IX_Supervisor_SupervisorId", newName: "IX_Supervisor_SId");
            RenameColumn(table: "dbo.Transactions", name: "Supervisor_SupervisorId", newName: "Supervisor_SId");
            RenameColumn(table: "dbo.SupervisionGroups", name: "Supervisor_SupervisorId", newName: "Supervisor_SId");
            RenameColumn(table: "dbo.Files", name: "Supervisor_SupervisorId", newName: "Supervisor_SId");
            RenameColumn(table: "dbo.Transactions", name: "StudentId", newName: "Student_StudentId");
            RenameColumn(table: "dbo.Tasks", name: "SerialNumId", newName: "FollowUp_SerialNumId");
            CreateIndex("dbo.Students", "GroupId");
            CreateIndex("dbo.Tasks", "FollowUp_SerialNumId");
            CreateIndex("dbo.Transactions", "Student_StudentId");
            AddForeignKey("dbo.Transactions", "Supervisor_SId", "dbo.Supervisors", "SId");
            AddForeignKey("dbo.SupervisionGroups", "Supervisor_SId", "dbo.Supervisors", "SId");
            AddForeignKey("dbo.Files", "Supervisor_SId", "dbo.Supervisors", "SId");
            AddForeignKey("dbo.Students", "GroupId", "dbo.SupervisionGroups", "GroupId", cascadeDelete: true);
            AddForeignKey("dbo.Transactions", "Student_StudentId", "dbo.Students", "StudentId");
            AddForeignKey("dbo.Tasks", "FollowUp_SerialNumId", "dbo.FollowUps", "SerialNumId");
        }
    }
}
