using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WebContactBook.DAL.Interface;

namespace WebContactBook.API.Controllers
{
    public class SemesterController : ControllerBase
    {
        private readonly ILogger<SemesterController> _logger;
        private readonly ISemesterRepository semesterRepository;

        public SemesterController(ILogger<SemesterController> logger,
                                    ISemesterRepository semesterRepository)
        {
            _logger = logger;
            this.semesterRepository = semesterRepository;
        }
    }
}
