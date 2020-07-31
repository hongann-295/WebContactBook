using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;
using WebContactBook.Domain.Responses.Grade;

namespace WebContactBook.DAL.Interface
{
    public interface IGradeRepository
    {
        Task<IEnumerable<ViewGrade>> Gets();
    }
}
