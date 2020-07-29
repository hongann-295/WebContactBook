using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using WebContactBook.DAL.Interface;

namespace WebContactBook.API.Controllers
{
    public class NationController : ControllerBase
    {
        private readonly ILogger<NationController> _logger;
        private readonly INationRepository nationRepository;

        public NationController(ILogger<NationController> logger,
                                    INationRepository   nationRepository)
        {
            _logger = logger;
            this.nationRepository = nationRepository;
        }
    }
}
