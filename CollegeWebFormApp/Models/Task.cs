using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace CollegeWebFormApp.Models
{
    public class Task
    {
        [Key]
        public int TaskId { get; set; }
        public string TaskTitle { get; set; }
        //public string taskassign { get; set; }

        public string comment { get; set; }

        /// <summary>
        /// //////////////////////
        /// </summary>
        public DateTime durationdate { get; set; }
        public int SupervisorId { get; set; }

        public Byte[] AssigmentData { get; set; }
        public string AgssigmentName { get; set; }
        public string ContentType { get; set; }
        public int GroupId { get; set; }



        /// <summary>
        /// /////////
        /// </summary>
        //public int SerialNumId { get; set; }

        public virtual ICollection<SupervisionGroup>SupervisionGroups  { get; set; }

    }
}