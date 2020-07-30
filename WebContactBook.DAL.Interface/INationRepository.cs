﻿using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;
using WebContactBook.Domain.Repuests.Nation;
using WebContactBook.Domain.Responses.Nation;

namespace WebContactBook.DAL.Interface
{
    public interface INationRepository
    {
        Task<IEnumerable<Nation>> Gets();
        Task<Nation> Get(int nationId);
        Task<DeleteNationResult> Delete(string nationIds);
        Task<SaveNationResult> Save(SaveNationRequest request);
    }
}
