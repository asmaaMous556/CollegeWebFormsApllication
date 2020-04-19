namespace CollegeWebFormApp.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class addrelationships : DbMigration
    {
        public override void Up()
        {
            DropForeignKey("dbo.Tasks", "FollowUp_SerialNumId", "dbo.FollowUps");
            DropForeignKey("dbo.Transactions", "Student_StudentId", "dbo.Students");
            DropForeignKey("dbo.Files", "Supervisor_SId", "dbo.Supervisors");
            DropForeignKey("dbo.SupervisionGroups", "Supervisor_SId", "dbo.Supervisors");
            DropForeignKey("dbo.Transactions", "Supervisor_SId", "dbo.Supervisors");
            DropIndex("dbo.Transactions", new[] { "Student_StudentId" });
            DropIndex("dbo.Tasks", new[] { "FollowUp_SerialNumId" });
            RenameColumn(table: "dbo.Tasks", name: "FollowUp_SerialNumId", newName: "SerialNumId");
            RenameColumn(table: "dbo.Transactions", name: "Student_StudentId", newName: "StudentId");
            RenameColumn(table: "dbo.Files", name: "Supervisor_SId", newName: "Supervisor_SId");
            RenameColumn(table: "dbo.SupervisionGroups", name: "Supervisor_SId", newName: "Supervisor_SId");
            RenameColumn(table: "dbo.Transactions", name: "Supervisor_SId", newName: "Supervisor_SId");
            RenameIndex(table: "dbo.Files", name: "IX_Supervisor_SId", newName: "IX_Supervisor_SupervisorId");
            RenameIndex(table: "dbo.Transactions", name: "IX_Supervisor_SId", newName: "IX_Supervisor_SupervisorId");
            RenameIndex(table: "dbo.SupervisionGroups", name: "IX_Supervisor_SId", newName: "IX_Supervisor_SId");
            DropPrimaryKey("dbo.Supervisors");
         
            AddColumn("dbo.FollowUps", "StudentId", c => c.Int(nullable: false));
            AddColumn("dbo.SupervisionGroups", "StudentId", c => c.Int(nullable: false));
           
           
            AlterColumn("dbo.Transactions", "StudentId", c => c.Int(nullable: false));
            AlterColumn("dbo.Tasks", "SerialNumId", c => c.Int(nullable: false));
            
            CreateIndex("dbo.Transactions", "StudentId");
            CreateIndex("dbo.Tasks", "SerialNumId");
            AddForeignKey("dbo.Tasks", "SerialNumId", "dbo.FollowUps", "SerialNumId", cascadeDelete: true);
            AddForeignKey("dbo.Transactions", "StudentId", "dbo.Students", "StudentId", cascadeDelete: true);
            AddForeignKey("dbo.Files", "Supervisor_SId", "dbo.Supervisors", "SId");
            AddForeignKey("dbo.SupervisionGroups", "Supervisor_SId", "dbo.Supervisors", "SId");
            AddForeignKey("dbo.Transactions", "Supervisor_SId", "dbo.Supervisors", "SId");
            DropColumn("dbo.FollowUps", "StId");
            DropColumn("dbo.SupervisionGroups", "StId");
           
            



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
            DropForeignKey("dbo.Transactions", "StudentId", "dbo.Students");
            DropForeignKey("dbo.Tasks", "SerialNumId", "dbo.FollowUps");
            DropIndex("dbo.Tasks", new[] { "SerialNumId" });
            DropIndex("dbo.Transactions", new[] { "StudentId" });
            DropPrimaryKey("dbo.Supervisors");
            AlterColumn("dbo.Tasks", "SerialNumId", c => c.Int());
            AlterColumn("dbo.Transactions", "StudentId", c => c.Int());
            DropColumn("dbo.Supervisors", "SupervisorName");
            DropColumn("dbo.Supervisors", "SupervisorId");
            DropColumn("dbo.SupervisionGroups", "StudentId");
            DropColumn("dbo.FollowUps", "StudentId");
            AddPrimaryKey("dbo.Supervisors", "SId");
            RenameIndex(table: "dbo.SupervisionGroups", name: "IX_Supervisor_SupervisorId", newName: "IX_Supervisor_SId");
            RenameIndex(table: "dbo.Transactions", name: "IX_Supervisor_SupervisorId", newName: "IX_Supervisor_SId");
            RenameIndex(table: "dbo.Files", name: "IX_Supervisor_SupervisorId", newName: "IX_Supervisor_SId");
            RenameColumn(table: "dbo.Transactions", name: "Supervisor_SupervisorId", newName: "Supervisor_SId");
            RenameColumn(table: "dbo.SupervisionGroups", name: "Supervisor_SupervisorId", newName: "Supervisor_SId");
            RenameColumn(table: "dbo.Files", name: "Supervisor_SupervisorId", newName: "Supervisor_SId");
            RenameColumn(table: "dbo.Transactions", name: "StudentId", newName: "Student_StudentId");
            RenameColumn(table: "dbo.Tasks", name: "SerialNumId", newName: "FollowUp_SerialNumId");
            CreateIndex("dbo.Tasks", "FollowUp_SerialNumId");
            CreateIndex("dbo.Transactions", "Student_StudentId");
            AddForeignKey("dbo.Transactions", "Supervisor_SId", "dbo.Supervisors", "SId");
            AddForeignKey("dbo.SupervisionGroups", "Supervisor_SId", "dbo.Supervisors", "SId");
            AddForeignKey("dbo.Files", "Supervisor_SId", "dbo.Supervisors", "SId");
            AddForeignKey("dbo.Transactions", "Student_StudentId", "dbo.Students", "StudentId");
            AddForeignKey("dbo.Tasks", "FollowUp_SerialNumId", "dbo.FollowUps", "SerialNumId");
        }
    }
}
