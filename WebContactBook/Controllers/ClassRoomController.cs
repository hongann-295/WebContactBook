using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System.Collections.Generic;
using System.Threading.Tasks;
using WebContactBook.DAL.Interface;
using WebContactBook.Domain.Responses.Class;

namespace WebContactBook.API.Controllers
{
    [ApiController]
    public class ClassRoomController : ControllerBase
    {
        private readonly ILogger<ClassRoomController> _logger;
        private readonly IClassRoomRepository classRoomRepository;

        public ClassRoomController(ILogger<ClassRoomController> logger,
                                    IClassRoomRepository classRoomRepository)
        {
            _logger = logger;
            this.classRoomRepository = classRoomRepository;
        }

        [HttpGet]
        [Route("/api/classRoom/gets")]
        public async Task<IEnumerable<ViewClass>> Gets()
        {
            return await classRoomRepository.Gets();
        }
        [HttpGet]
        [Route("/api/classRoom/getsByCourseIdAndGradeId/{courseId},{gradeId}")]
        public async Task<IEnumerable<ViewClass>> GetsByCourseIdAndGradeId(int courseId, int gradeId)
        {
            return await classRoomRepository.GetsByCourseIdAndGradeId(courseId, gradeId);
        }

        [HttpPost]
        [Route("/api/classRoom/save")]
        public async Task<SaveClassRoomResults> Save(ClassRoom request)
        {
            return await classRoomRepository.Save(request);
        }

        [HttpDelete]
        [Route("/api/classRoom/delete/{id}")]
        public async Task<DeleteClassRoomResults> Delete(int id)
        {
            return await classRoomRepository.Delete(id);
        }
    }
}
