using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace CollegeWebFormApp.Models
{
    public class CurrentProject
    {
        [Key]
        public int Id { get; set; }


        public int FileId { get; set; }


        public string FileName { get; set; }

        public Byte[] Data { get; set; }

        public string ContentType { get; set; }
        public DateTime date { get; set; }
        //public int StudentId { get; set; }
        public int SupervisorId { get; set; }

        public virtual ICollection<File> Files { get; set; }

    }
}