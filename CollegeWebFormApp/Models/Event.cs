using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace CollegeWebFormApp.Models
{
    public class Event
    {

        [Key]
        public int EventId { get; set; }
        public string EventName { get; set; }
       // public int TaskId { get; set; }
        public int? CId { get; set; }
        public DateTime Edate { get; set; }
        
      
        public string EventDescription { get; set; }


    }
}