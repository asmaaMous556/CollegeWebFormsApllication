using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace CollegeWebFormApp.Models
{
    public class File
    {
        [Key]
        public int FileId { get; set; }
        public string File_name { get; set; }
        public Byte[] UploadedfileByStudent { get; set; }
        public string ContentType { get; set; }
        public int StudentId { get; set; }
        public int SupervisorId { get; set; }
        public DateTime date { get; set; }
        /// <summary>
        /// //
        /// </summary>

       // public string description { get; set; }
       public int GroupId { get; set; }
       // public int uploadBy { get; set; }


       // public  string FileContent{get; set;}

    }
}