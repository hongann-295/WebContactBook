﻿using System;
using System.Collections.Generic;
using System.Text;

namespace WebContactBook.Domain.Responses.Class
{
    public class ViewClass
    {
        public int ClassId { get; set; }
        public string ClassName { get; set; }
        public int GradeId { get; set; }
        public int CourseId { get; set; }
        public int TeacherId { get; set; }
        public string TeacherName { get; set; }
        public int Students { get; set; }
    }
}
    