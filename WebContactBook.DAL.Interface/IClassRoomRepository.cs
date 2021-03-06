﻿using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;
using WebContactBook.Domain.Responses.Class;

namespace WebContactBook.DAL.Interface
{
    public interface IClassRoomRepository
    {
        Task<IEnumerable<ViewClass>> Gets();
        Task<IEnumerable<ViewClass>> GetsByCourseIdAndGradeId(int courseId, int gradeId);
        Task<DeleteClassRoomResults> Delete(int classId);
        Task<SaveClassRoomResults> Save(ClassRoom request);
    }
}
