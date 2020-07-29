using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WebContactBook.DAL.Interface;

namespace WebContactBook.API.Controllers
{
    public class ReligionController : ControllerBase
    {
        private readonly ILogger<ReligionController> _logger;
        private readonly IReligionRepository religionRepository;

        public ReligionController(ILogger<ReligionController> logger,
                                    IReligionRepository religionRepository)
        {
            _logger = logger;
            this.religionRepository = religionRepository;
        }
    }
}
