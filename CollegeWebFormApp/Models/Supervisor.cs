using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace CollegeWebFormApp.Models
{
    public class Supervisor
    {
        [Key]
       public int SupervisorId { get; set; }
        public string SupervisorName { get; set; }
        public string Password { get; set; }
        public string Email { get; set; }
        public string Department { get; set; }

       // public int GroupId { get; set; }
        public string phone { get; set; }






       // public virtual ICollection<File> Files { get; set; }

        public virtual ICollection<SupervisionGroup> SupervisionGroups { get; }

        public virtual ICollection<Transaction> Transactions { get; set; }

        public virtual ICollection<CurrentProject> CurrentProjects { get; set; }

        public virtual ICollection<SupervisorEvaluation> SupervisorEvaluations { get; set; }
        public virtual ICollection<EvaluationTransaction> EvaluationTransactions { get; set; }

        //public virtual ICollection<CommitteTransaction> CommitteTransactions { get; set; }
        //public virtual ICollection<CommitteEvaluation> CommitteEvaluations { get; set; }

        public virtual ICollection<CommitteTransaction> CommitteTransactions { get; set; }

        public virtual ICollection<CommitteEvaluation> CommitteEvaluations { get; set; }


    }
}