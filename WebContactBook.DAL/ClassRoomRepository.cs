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
    }
}
