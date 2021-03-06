﻿using Dapper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Threading.Tasks;
using WebContactBook.DAL.Interface;
using WebContactBook.Domain.Repuests.Nation;
using WebContactBook.Domain.Responses.Nation;

namespace WebContactBook.DAL
{
    public class NationRepository : BaseRepository, INationRepository
    {

        public async Task<SaveNationResult> Save(SaveNationRequest request)
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

        public async Task<DeleteNationResult> Delete(string nationIds)
        {
            DynamicParameters parameters = new DynamicParameters();
            parameters.Add("@NationIds", nationIds);
            return await SqlMapper.QueryFirstOrDefaultAsync<DeleteNationResult>(cnn: connection,
                             param: parameters,
                            sql: "sp_Delete_Nation",
                            commandType: CommandType.StoredProcedure);
        }

        public async Task<DeleteNationResult> DeleteById(int nationId)
        {
            DynamicParameters parameters = new DynamicParameters();
            parameters.Add("@NationId", nationId);
            return await SqlMapper.QueryFirstOrDefaultAsync<DeleteNationResult>(cnn: connection,
                             param: parameters,
                            sql: "sp_Delete_Nation_ById",
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

        public async Task<IEnumerable<StudentView>> GetStudents(int nationId)
        {
            DynamicParameters parameters = new DynamicParameters();
            parameters.Add("@NationId", nationId);
            return await SqlMapper.QueryAsync<StudentView>(cnn: connection,
                        param: parameters,
                        sql: "sp_Get_Students_ByNationId",
                        commandType: CommandType.StoredProcedure);
        }
    }
}
