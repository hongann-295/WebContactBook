using Dapper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Text;
using System.Threading.Tasks;
using WebContactBook.DAL.Interface;
using WebContactBook.Domain.Responses.Grade;

namespace WebContactBook.DAL
{
    public class GradeRepository : BaseRepository, IGradeRepository
    {
        public async Task<IEnumerable<ViewGrade>> Gets()
        {
            return await SqlMapper.QueryAsync<ViewGrade>(connection, "sp_Get_GradesAll", CommandType.StoredProcedure);
        }
    }
}
