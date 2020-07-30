using Dapper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Text;
using System.Threading.Tasks;
using WebContactBook.DAL.Interface;
using WebContactBook.Domain.Responses.Class;

namespace WebContactBook.DAL
{
    public class ClassRoomRepository : BaseRepository, IClassRoomRepository
    {
        public async Task<IEnumerable<ViewClass>> Gets()
        {
            return await SqlMapper.QueryAsync<ViewClass>(connection, "sp_Get_ClassRoomsAll", CommandType.StoredProcedure);
        }

        public async Task<IEnumerable<ViewClass>> GetsByCourseIdAndGradeId(int courseId, int gradeId)
        {
            DynamicParameters parameters = new DynamicParameters();
            parameters.Add("@CourseId", courseId);
            parameters.Add("@GradeId", gradeId);
            return await SqlMapper.QueryAsync<ViewClass>(cnn: connection,
                        param: parameters,
                        sql: "sp_Get_ClassRooms_ByCourseIdAndGradeId",
                        commandType: CommandType.StoredProcedure);
        }
    }
}
