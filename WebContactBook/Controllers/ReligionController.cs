using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WebContactBook.DAL.Interface;
using WebContactBook.Domain.Responses.Religion;

namespace WebContactBook.API.Controllers
{
    [ApiController]
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

        [HttpGet]
        [Route("/api/religion/gets")]
        public async Task<IEnumerable<GetAllReligion>> Gets()
        {
            return await religionRepository.Gets();
        }

        [HttpGet]
        [Route("/api/religion/get/{id}")]
        public async Task<Religion> Get(int id)
        {
            return await religionRepository.Get(id);
        }

        [HttpPost]
        [Route("/api/religion/save")]
        public async Task<SaveReligion> Save(Religion request)
        {
            return await religionRepository.Save(request);
        }

        [HttpDelete]
        [Route("/api/religion/delete/{id}")]
        public async Task<DeleteReligionResults> Delete(int id)
        {
            return await religionRepository.Delete(id);
        }
    }
}
