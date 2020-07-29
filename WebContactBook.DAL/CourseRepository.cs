using Dapper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Text;
using System.Threading.Tasks;
using WebContactBook.DAL.Interface;
using WebContactBook.Domain.Responses.Course;

namespace WebContactBook.DAL
{
    public class CourseRepository : BaseRepository, ICourseRepository
    {
        public async Task<IEnumerable<ViewCourse>> Gets()
        {
            return await SqlMapper.QueryAsync<ViewCourse>(connection, "sp_Get_CoursesAll", CommandType.StoredProcedure);
        }
    }
}
