﻿using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;
using WebContactBook.Domain.Responses.Nation;

namespace WebContactBook.DAL.Interface
{
    public interface INationRepository
    {
        Task<IEnumerable<Nation>> Gets();
        Task<Nation> Get(int nationId);
        Task<DeleteNationResult> Delete(int nationId);
        Task<SaveNationResult> Save(Nation request);
        //Task<IEnumerable<Department>> Search(string keyword);
    }
}
