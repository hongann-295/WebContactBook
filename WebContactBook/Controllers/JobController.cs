
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WebContactBook.DAL.Interface;

namespace WebContactBook.API.Controllers
{
    public class JobController : ControllerBase
    {
        private readonly ILogger<JobController> _logger;
        private readonly IJobRepository jobRepository;

        public JobController(ILogger<JobController> logger,
                                    IJobRepository jobRepository)
        {
            _logger = logger;
            this.jobRepository = jobRepository;
        }
    }
}
