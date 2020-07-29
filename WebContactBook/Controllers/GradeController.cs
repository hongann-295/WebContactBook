using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WebContactBook.DAL.Interface;
using WebContactBook.Domain.Responses.Grade;

namespace WebContactBook.API.Controllers
{
    public class GradeController : ControllerBase
    {
        private readonly ILogger<GradeController> _logger;
        private readonly IGradeRepository gradeRepository;

        public GradeController(ILogger<GradeController> logger,
                                    IGradeRepository gradeRepository)
        {
            _logger = logger;
            this.gradeRepository = gradeRepository;
        }

        [HttpGet]
        [Route("/api/grade/gets")]
        public async Task<IEnumerable<ViewGrade>> Gets()
        {
            return await gradeRepository.Gets();
        }

    }
}
