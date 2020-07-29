using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System.Collections.Generic;
using System.Threading.Tasks;
using WebContactBook.DAL.Interface;
using WebContactBook.Domain.Responses.Course;

namespace WebContactBook.API.Controllers
{
    public class CourseController : ControllerBase
    {
        private readonly ILogger<CourseController> _logger;
        private readonly ICourseRepository courseRepository;

        public CourseController(ILogger<CourseController> logger,
                                    ICourseRepository courseRepository)
        {
            _logger = logger;
            this.courseRepository = courseRepository;
        }
        
        [HttpGet]
        [Route("/api/course/gets")]
        public async Task<IEnumerable<ViewCourse>> Gets()
        {
            return await courseRepository.Gets();
        }
    }
}
