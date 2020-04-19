namespace CollegeWebFormApp.Models
{
    using System;
    using System.Data.Entity;
    using System.Linq;

    public class CollegeModel : DbContext
    {
        // Your context has been configured to use a 'CollegeModel' connection string from your application's 
        // configuration file (App.config or Web.config). By default, this connection string targets the 
        // 'CollegeWebFormApp.Models.CollegeModel' database on your LocalDb instance. 
        // 
        // If you wish to target a different database and/or database provider, modify the 'CollegeModel' 
        // connection string in the application configuration file.
        public CollegeModel()
            : base("name=CollegeModel")
        {
        }

        // Add a DbSet for each entity type that you want to include in your model. For more information 
        // on configuring and using a Code First model, see http://go.microsoft.com/fwlink/?LinkId=390109.

        // public virtual DbSet<MyEntity> MyEntities { get; set; }

        public virtual DbSet<Coordinator> Coordinators { get; set; }
        public virtual DbSet<Event> Events { get; set; }
        public virtual DbSet<File> Files { get; set; }
        public virtual DbSet<FollowUp> FollowUps { get; set; }
        public virtual DbSet<Repository> Repositories { get; set; }
        public virtual DbSet<Student> Students { get; set; }
        public virtual DbSet<SupervisionGroup> SupervisionGroups { get; set; }
        public virtual DbSet<Supervisor> Supervisors { get; set; }
        public virtual DbSet<Task> Tasks { get; set; }
        public virtual DbSet<Transaction> Transactions { get; set; }
    }

    //public class MyEntity
    //{
    //    public int Id { get; set; }
    //    public string Name { get; set; }
    //}
}