namespace CollegeWebFormApp.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class stingToInt : DbMigration
    {
        public override void Up()
        {
            AlterColumn("dbo.Students", "Supervisor_grade", c => c.String());
            AlterColumn("dbo.Students", "committeeGrade1", c => c.String());
            AlterColumn("dbo.Students", "committeeGrade2", c => c.String());
            AlterColumn("dbo.Students", "committeeGrade3", c => c.String());
        }
        
        public override void Down()
        {
            AlterColumn("dbo.Students", "committeeGrade3", c => c.Int());
            AlterColumn("dbo.Students", "committeeGrade2", c => c.Int());
            AlterColumn("dbo.Students", "committeeGrade1", c => c.Int());
            AlterColumn("dbo.Students", "Supervisor_grade", c => c.Int());
        }
    }
}
