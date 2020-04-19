using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace CollegeWebFormApp.Models
{
    public class Coordinator
    {
        [Key]
        public int CId { get; set; }
        public string CName { get; set; }
        public string password { get; set; }

      //  public virtual ICollection<File> Files { get; set; }
        public virtual ICollection<Transaction> Transactions { get; set; }
        public virtual ICollection<Idea_Presentation> Idea_Presentations { get; set; }
        public virtual ICollection<SupervisorEvaluation> SupervisorEvaluations { get; set; }
        //public virtual ICollection<CommitteEvaluation> CommitteEvaluations { get; set; }

       // public virtual ICollection<CommitteTransaction> CommitteTransactions { get; set; }

        public virtual ICollection<CommitteEvaluation> CommitteEvaluations { get; set; }
    }
}