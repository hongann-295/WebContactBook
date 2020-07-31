using Dapper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Text;
using System.Threading.Tasks;
using WebContactBook.DAL.Interface;
using WebContactBook.Domain.Responses.Religion;

namespace WebContactBook.DAL
{
    public class ReligionRepository : BaseRepository, IReligionRepository
    {
        public async Task<DeleteReligionResults> Delete(int religionId)
        {
            DynamicParameters parameters = new DynamicParameters();
            parameters.Add("@ReligionId", religionId);
            return await SqlMapper.QueryFirstOrDefaultAsync<DeleteReligionResults>(cnn: connection,
                             param: parameters,
                            sql: "Sp_Delete_Religion",
                            commandType: CommandType.StoredProcedure);
        }

        public async Task<Religion> Get(int religionId)
        {
            DynamicParameters parameters = new DynamicParameters();
            parameters.Add("@ReligionId", religionId);
            return (await SqlMapper.QueryFirstOrDefaultAsync<Religion>(cnn: connection,
                             param: parameters,
                            sql: "Sp_Get_Religion_byId",
                            commandType: CommandType.StoredProcedure));
        }

        public async Task<IEnumerable<GetAllReligion>> Gets()
        {
            return await SqlMapper.QueryAsync<GetAllReligion>(connection, "Sp_Get_ReligionAll", CommandType.StoredProcedure);
        }

        public async Task<SaveReligion> Save(Religion request)
        {
            try
            {
                DynamicParameters parameters = new DynamicParameters();
                parameters.Add("@ReligionId", request.ReligionId);
                parameters.Add("@ReligionName", request.ReligionName);
                return (await SqlMapper.QueryFirstOrDefaultAsync<SaveReligion>(cnn: connection,
                                            sql: "Sp_Save_Religion",
                                            param: parameters,
                                            commandType: CommandType.StoredProcedure));
            }
            catch (Exception ex)
            {
                return new SaveReligion()
                {
                    ReligionId = 0,
                    Message = "Something went wrong, please try again"
                };
            }
        }


    }
}
