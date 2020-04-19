using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace CollegeWebFormApp.Models
{
    public class FollowUp
    {
        [Key]
        public int SerialNumId { get; set; }
        public string TaskTopic { get; set; }
        public int GroupId { get; set; }
        public DateTime Week { get; set; }
        public DateTime DueDate { get; set; }
        public string TaskAssign { get; set; }
        public int? StudentId { get; set; }
        public string Comment { get; set; }

       // public virtual ICollection<Task> Tasks { get; set; }
    }
}