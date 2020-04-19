using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace CollegeWebFormApp.Models
{
    public class SupervisorEvaluation
    {
        [key]
       public int ID { get; set; }
       public string state { get; set; }
       public string comment { get; set; }
        public int StudentId { get; set; }
        public int SupervisorId { get; set; }
        public int CId { get; set; }





    }
}