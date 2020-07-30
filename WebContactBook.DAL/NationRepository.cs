using Dapper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Threading.Tasks;
using WebContactBook.DAL.Interface;
using WebContactBook.Domain.Responses.Nation;

namespace WebContactBook.DAL
{
    public class NationRepository : BaseRepository, INationRepository
    {

        public async Task<SaveNationResult> Save(Nation request)
        {
            try
            {
                DynamicParameters parameters = new DynamicParameters();
                parameters.Add("@NationId", request.NationId);
                parameters.Add("@NationName", request.NationName);
                return (await SqlMapper.QueryFirstOrDefaultAsync<SaveNationResult>(cnn: connection,
                                            sql: "sp_Save_Nation",
                                            param: parameters,
                                            commandType: CommandType.StoredProcedure));
            }
            catch (Exception ex)
            {
                return new SaveNationResult()
                {
                    NationId = 0,
                    Message = "Something went wrong, please try again"
                };
            }
        }

        public async Task<DeleteNationResult> Delete(int nationId)
        {
            DynamicParameters parameters = new DynamicParameters();
            parameters.Add("@NationId", nationId);
            return await SqlMapper.QueryFirstOrDefaultAsync<DeleteNationResult>(cnn: connection,
                             param: parameters,
                            sql: "sp_Delete_Nation",
                            commandType: CommandType.StoredProcedure);
        }

        public async Task<Nation> Get(int nationId)
        {
            DynamicParameters parameters = new DynamicParameters();
            parameters.Add("@NationId", nationId);
            return (await SqlMapper.QueryFirstOrDefaultAsync<Nation>(cnn: connection,
                             param: parameters,
                            sql: "sp_Get_Nation",
                            commandType: CommandType.StoredProcedure));
        }

        public async Task<IEnumerable<Nation>> Gets()
        {
            return await SqlMapper.QueryAsync<Nation>(connection, "sp_Gets_Nation", CommandType.StoredProcedure);
        }

        //public async Task<IEnumerable<Department>> Search(string keyword)
        //{
        //    DynamicParameters parameters = new DynamicParameters();
        //    parameters.Add("@keyword", keyword);
        //    return await SqlMapper.QueryAsync<Department>(cnn: conn, sql: "sp_SearchDepartment",
        //                                       param: parameters,
        //                                       commandType: CommandType.StoredProcedure);
        //}
    }
}
