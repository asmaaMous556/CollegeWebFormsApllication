using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace CollegeWebFormApp.Models
{
    public class Student
    {
        [Key]
        public int StudentId { get; set; }
        public string StudentName { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }
        public string CellPhone { get; set; }

        public string ideaSelection { get; set; }

        public int GroupId { get; set; }
        public int ?TotalMark { get; set; }

       // public double Supervisor_grade{ get; set; }
        public double?committeeGrade1 { get; set; }
        
        public double? TotalOfCoordinator { get; set; }


        //public string committeeGrade2 { get; set; }
        //public string committeeGrade3 { get; set; }

        public double? COIS342 { get; set; }
        public double? COIT374 { get; set; }
        public double? COIT415 { get; set; }
        public double? hour { get; set; }
       // public Byte[] AssigmentOfStudent { get; set; }
     //   public DateTime DateOfEvaluation { get; set; }

        public virtual ICollection<Transaction> Transactions { get; set; }
        public virtual ICollection<File> Files { get; set; }
        public virtual ICollection<Idea_Presentation> Idea_Presentations { get; set; }

        public virtual ICollection<EvaluationTransaction> EvaluationTransactions { get; set; }
       // public virtual ICollection<CommitteeEvaluation> CommitteeEvaluations { get; set; }
        


    }
}