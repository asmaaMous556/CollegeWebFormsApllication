using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CollegeWebFormApp.Models
{
    public class CommitteEvaluation
    {
        [key]
        public int Id { get; set; }
        public string state { get; set; }
        public string comment { get; set; }
        public int StudentId { get; set; }
        public int SupervisorId { get; set; }
        public int CId { get; set; }
    }
}