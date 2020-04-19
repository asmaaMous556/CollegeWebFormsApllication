using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CollegeWebFormApp.Models
{
    public class Idea_Presentation
    {
        [key]
        public int ID { get; set; }
        public int CId { get; set; }
        public int StudentId { get; set; }

        public string ProjectTitle { get; set; }

        public string Comment { get; set; }

        public string State { get; set; }

    }
}