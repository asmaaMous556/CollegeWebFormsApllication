namespace CollegeWebFormApp.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class updatesOne : DbMigration
    {
        public override void Up()
        {
            DropForeignKey("dbo.Students", "GroupId", "dbo.SupervisionGroups");
          //  DropForeignKey("dbo.Files", "Supervisor_SId", "dbo.Supervisors");
      //      DropForeignKey("dbo.SupervisionGroups", "Supervisor_SId", "dbo.Supervisors");
         //   DropForeignKey("dbo.Transactions", "Supervisor_SId", "dbo.Supervisors");
            DropIndex("dbo.Students", new[] { "GroupId" });
         //   RenameColumn(table: "dbo.Files", name: "Supervisor_SId", newName: "Supervisor_SupervisorId");
          //  RenameColumn(table: "dbo.SupervisionGroups", name: "Supervisor_SId", newName: "Supervisor_SupervisorId");
          //  RenameColumn(table: "dbo.Transactions", name: "Supervisor_SId", newName: "Supervisor_SupervisorId");
           // RenameIndex(table: "dbo.Files", name: "IX_Supervisor_SId", newName: "IX_Supervisor_SupervisorId");
            RenameIndex(table: "dbo.Transactions", name: "IX_Supervisor_SId", newName: "IX_Supervisor_SupervisorId");
        //    RenameIndex(table: "dbo.SupervisionGroups", name: "IX_Supervisor_SId", newName: "IX_Supervisor_SupervisorId");
         //   DropPrimaryKey("dbo.Supervisors");
            AddColumn("dbo.Tasks", "TaskAssign", c => c.String());
            AddColumn("dbo.Tasks", "comment", c => c.String());
            AddColumn("dbo.Tasks", "durationDate", c => c.DateTime(nullable: false));
            AddColumn("dbo.Students", "ideaSelection", c => c.String());
         //   AddColumn("dbo.Supervisors", "SupervisorId", c => c.Int(nullable: false, identity: true));
          //  AddColumn("dbo.Supervisors", "SupervisorName", c => c.String());
            AlterColumn("dbo.Students", "CellPhone", c => c.String());
            AlterColumn("dbo.Students", "GroupId", c => c.Int(nullable: false));
          //  AddPrimaryKey("dbo.Supervisors", "SupervisorId");
            CreateIndex("dbo.Students", "GroupId");
            AddForeignKey("dbo.Students", "GroupId", "dbo.SupervisionGroups", "GroupId", cascadeDelete: true);
          //  AddForeignKey("dbo.Files", "Supervisor_SupervisorId", "dbo.Supervisors", "SupervisorId");
          //  AddForeignKey("dbo.SupervisionGroups", "Supervisor_SupervisorId", "dbo.Supervisors", "SupervisorId");
         //   AddForeignKey("dbo.Transactions", "Supervisor_SupervisorId", "dbo.Supervisors", "SupervisorId");
            DropColumn("dbo.Tasks", "TaskDescription");
          //  DropColumn("dbo.Supervisors", "SId");
          //  DropColumn("dbo.Supervisors", "SName");
        }
        
        public override void Down()
        {
            AddColumn("dbo.Supervisors", "SName", c => c.String());
          //  AddColumn("dbo.Supervisors", "SId", c => c.Int(nullable: false, identity: true));
            AddColumn("dbo.Tasks", "TaskDescription", c => c.String());
            DropForeignKey("dbo.Transactions", "Supervisor_SupervisorId", "dbo.Supervisors");
           // DropForeignKey("dbo.SupervisionGroups", "Supervisor_SupervisorId", "dbo.Supervisors");
         //   DropForeignKey("dbo.Files", "Supervisor_SupervisorId", "dbo.Supervisors");
            DropForeignKey("dbo.Students", "GroupId", "dbo.SupervisionGroups");
            DropIndex("dbo.Students", new[] { "GroupId" });
            DropPrimaryKey("dbo.Supervisors");
            AlterColumn("dbo.Students", "GroupId", c => c.Int());
            AlterColumn("dbo.Students", "CellPhone", c => c.Int());
           //// DropColumn("dbo.Supervisors", "SupervisorName");
           // DropColumn("dbo.Supervisors", "SupervisorId");
            DropColumn("dbo.Students", "ideaSelection");
            DropColumn("dbo.Tasks", "durationDate");
            DropColumn("dbo.Tasks", "comment");
            DropColumn("dbo.Tasks", "TaskAssign");
            AddPrimaryKey("dbo.Supervisors", "SId");
          //  RenameIndex(table: "dbo.SupervisionGroups", name: "IX_Supervisor_SupervisorId", newName: "IX_Supervisor_SId");
          //  RenameIndex(table: "dbo.Transactions", name: "IX_Supervisor_SupervisorId", newName: "IX_Supervisor_SId");
           // RenameIndex(table: "dbo.Files", name: "IX_Supervisor_SupervisorId", newName: "IX_Supervisor_SId");
           // RenameColumn(table: "dbo.Transactions", name: "Supervisor_SupervisorId", newName: "Supervisor_SId");
           // RenameColumn(table: "dbo.SupervisionGroups", name: "Supervisor_SupervisorId", newName: "Supervisor_SId");
           // RenameColumn(table: "dbo.Files", name: "Supervisor_SupervisorId", newName: "Supervisor_SId");
            CreateIndex("dbo.Students", "GroupId");
          //  AddForeignKey("dbo.Transactions", "Supervisor_SId", "dbo.Supervisors", "SId");
          //  AddForeignKey("dbo.SupervisionGroups", "Supervisor_SId", "dbo.Supervisors", "SId");
           // AddForeignKey("dbo.Files", "Supervisor_SId", "dbo.Supervisors", "SId");
            AddForeignKey("dbo.Students", "GroupId", "dbo.SupervisionGroups", "GroupId");
        }
    }
}
