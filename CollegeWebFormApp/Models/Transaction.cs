using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace CollegeWebFormApp.Models
{
    public class Transaction
    {
        [Key]
        public int SessionId { get; set; }
        public int SenderId { get; set; }
        public int ReceiverId { get; set; }
        public string content { get; set; }
        public DateTime time { get; set; }
        public string type { get; set; }
        public int StudentId { get; set; }


    }
}