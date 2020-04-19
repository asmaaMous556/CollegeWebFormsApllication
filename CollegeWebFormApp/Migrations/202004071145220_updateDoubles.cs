namespace CollegeWebFormApp.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class updateDoubles : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Students", "TotalOfCoordinator", c => c.Double());
            AlterColumn("dbo.Students", "committeeGrade1", c => c.Double());
            AlterColumn("dbo.Students", "COIS342", c => c.Double());
            AlterColumn("dbo.Students", "COIT374", c => c.Double());
            AlterColumn("dbo.Students", "COIT415", c => c.Double());
            AlterColumn("dbo.Students", "hour", c => c.Double());
            DropColumn("dbo.Students", "Supervisor_grade");
            DropColumn("dbo.Students", "committeeGrade2");
            DropColumn("dbo.Students", "committeeGrade3");
            DropColumn("dbo.Students", "AssigmentOfStudent");
        }
        
        public override void Down()
        {
            AddColumn("dbo.Students", "AssigmentOfStudent", c => c.Binary());
            AddColumn("dbo.Students", "committeeGrade3", c => c.String());
            AddColumn("dbo.Students", "committeeGrade2", c => c.String());
            AddColumn("dbo.Students", "Supervisor_grade", c => c.String());
            AlterColumn("dbo.Students", "hour", c => c.Int());
            AlterColumn("dbo.Students", "COIT415", c => c.String());
            AlterColumn("dbo.Students", "COIT374", c => c.String());
            AlterColumn("dbo.Students", "COIS342", c => c.String());
            AlterColumn("dbo.Students", "committeeGrade1", c => c.String());
            DropColumn("dbo.Students", "TotalOfCoordinator");
        }
    }
}
