using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System.Collections.Generic;
using System.Threading.Tasks;
using WebContactBook.DAL.Interface;
using WebContactBook.Domain.Responses.Class;

namespace WebContactBook.API.Controllers
{
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
    }
}
