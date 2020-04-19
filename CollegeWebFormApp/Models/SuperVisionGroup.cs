using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace CollegeWebFormApp.Models
{
    public class SupervisionGroup
    {

        [Key]
        public int GroupId { get; set; }
        public string GroupName { get; set; }
        public string projectTitle { get; set; }
        //public int StudentId { get; set; }
        public string description { get; set; }
        public string KnowledgeArea { get; set; }
        public virtual ICollection<FollowUp> FollowUps { get; set; }
        public virtual ICollection<Student> Students { get; set; }
        public virtual ICollection<Task> Tasks { get; set; }
        //public virtual ICollection<File> Files { get; set; }

    }
}