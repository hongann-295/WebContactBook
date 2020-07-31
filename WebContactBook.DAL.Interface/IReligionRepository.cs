using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;
using WebContactBook.Domain.Responses.Religion;

namespace WebContactBook.DAL.Interface
{
    public interface IReligionRepository
    {
        Task<IEnumerable<GetAllReligion>> Gets();
        Task<Religion> Get(int religionId);
        Task<DeleteReligionResults> Delete(int religionId);
        Task<SaveReligion> Save(Religion request);
    }
}
