using Dapper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Text;
using System.Threading.Tasks;
using WebContactBook.DAL.Interface;
using WebContactBook.Domain.Responses.Student;

namespace WebContactBook.DAL
{
    public class StudentRepository : BaseRepository, IStudentRepository
    {
        public async Task<ViewStudent> Get(int studentId)
        {
            DynamicParameters parameters = new DynamicParameters();
            parameters.Add("@StudentId", studentId);
            return (await SqlMapper.QueryFirstOrDefaultAsync<ViewStudent>(
                            cnn: connection,                                          //SqlMaper: Using Dapper
                           param: parameters,
                           sql: "sp_Get_Student_byStudentId",
                           commandType: CommandType.StoredProcedure));               //CommandType : using Data
        }
    }
}
