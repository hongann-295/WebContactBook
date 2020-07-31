using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;
using WebContactBook.Domain.Responses.Course;

namespace WebContactBook.DAL.Interface
{
    public interface ICourseRepository
    {
        Task<IEnumerable<ViewCourse>> Gets();
    }
}
