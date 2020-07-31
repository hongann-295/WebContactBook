using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WebContactBook.DAL.Interface;
using WebContactBook.Domain.Responses.Student;

namespace WebContactBook.API.Controllers
{
    public class StudentController : ControllerBase
    {
        private readonly ILogger<StudentController> _logger;
        private readonly IStudentRepository studentRepository;


        public StudentController(ILogger<StudentController> logger,
                                    IStudentRepository studentRepository)
        {
            _logger = logger;
            this.studentRepository = studentRepository;

        }
        [HttpGet]
        [Route("/api/student/get/{id}")]
        public async Task<ViewStudent> StudentDetails(int id)
        {
            return await studentRepository.Get(id);
        }
    }
}
