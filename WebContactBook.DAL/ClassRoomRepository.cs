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
        public async Task<DeleteClassRoomResults> Delete(int classId)
        {
            DynamicParameters parameters = new DynamicParameters();
            parameters.Add("@ClassId", classId);
            return await SqlMapper.QueryFirstOrDefaultAsync<DeleteClassRoomResults>(cnn: connection,
                             param: parameters,
                            sql: "Sp_Delete_ClassRoom",
                            commandType: CommandType.StoredProcedure);
        }

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

        public async Task<SaveClassRoomResults> Save(ClassRoom request)
        {
            try
            {
                DynamicParameters parameters = new DynamicParameters();
                parameters.Add("@ClassId", request.ClassId);
                parameters.Add("@ClassName", request.ClassName);
                parameters.Add("@GradeId", request.GradeId);
                parameters.Add("@CourseId", request.CourseId);
                parameters.Add("@TeacherId", request.TeacherId);
                return (await SqlMapper.QueryFirstOrDefaultAsync<SaveClassRoomResults>(
                                            cnn: connection,
                                            sql: "Sp_Save_ClassRoom",
                                            param: parameters,
                                            commandType: CommandType.StoredProcedure));
            }
            catch (Exception ex)
            {
                return new SaveClassRoomResults()
                {
                    ClassId = 0,
                    Message = "Something went wrong, please try again"
                };
            }
        }
    }
}
