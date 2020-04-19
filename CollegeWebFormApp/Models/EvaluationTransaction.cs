using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CollegeWebFormApp.Models
{
    public class EvaluationTransaction
    {
        public int Id { get; set; }

        public int StudentId { get; set; }
        public int SupervisorId { get; set; }

        public DateTime dateOfTransaction { get; set; }
    }
}