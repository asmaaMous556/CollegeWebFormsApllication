using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace CollegeWebFormApp.Models
{
    public class Repository
    {
        [Key]
        public int ProjectId { get; set; }
        public string ProjectTitle { get; set; }
        //public int FileId { get; set; }
        //public string File_Name { get; set; }
        public string Description { get; set; }
        public string KnowledgeArea { get; set; }

        public int StudentId { get; set; }

        public DateTime Date { get; set; }

    }
}