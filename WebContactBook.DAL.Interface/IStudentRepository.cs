using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;
using WebContactBook.Domain.Responses.Student;

namespace WebContactBook.DAL.Interface
{
    public interface IStudentRepository
    {
        Task<ViewStudent> Get(int studentId);
        //Task<IEnumerable<>> Gets(int classId);
        //Task<Edit_GetEmployee> Get(int employeeId);
        //Task<DeleteEmployeeResult> Delete(int id);
        //Task<SaveEmployeeResult> Save(Save_CreateUpdateEmployee request);
        //Task<IEnumerable<Department>> Search(string keyword);
    }
}
