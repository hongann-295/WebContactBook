using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WebContactBook.DAL.Interface;

namespace WebContactBook.API.Controllers
{
    public class DegreeController : ControllerBase
    {
        private readonly ILogger<DegreeController> _logger;
        private readonly IDegreeRepository degreeRepository;

        public DegreeController(ILogger<DegreeController> logger,
                                    IDegreeRepository degreeRepository)
        {
            _logger = logger;
            this.degreeRepository = degreeRepository;
        }
    }
}
