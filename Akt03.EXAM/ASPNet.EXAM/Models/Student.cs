using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ASPNet.EXAM.Models
{
    public class Student
    {
        public string Name { get; set; }
        public string Surname { get; set; }
        public string Group { get; set; }
        public double AverageMark { get; set; } //средний бал
        public Student() { }
        public Student(string name, string surname, string group, double averageMark)
        {
            Name = name;
            Surname = surname;
            Group = group;
            AverageMark = averageMark;
        }
    }
}