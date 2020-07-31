using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System.Collections.Generic;
using System.Threading.Tasks;
using WebContactBook.DAL.Interface;
using WebContactBook.Domain.Repuests.Nation;
using WebContactBook.Domain.Responses.Nation;

namespace WebContactBook.API.Controllers
{
    [ApiController]
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

        [HttpGet]
        [Route("/api/nation/getStudents/{nationId}")]
        public async Task<IEnumerable<StudentView>> GetStudents(int nationId)
        {
            return await nationRepository.GetStudents(nationId);
        }


        /// <summary>
        /// Get all nation in DB
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        [Route("/api/nation/gets")]
        public async Task<IEnumerable<Nation>> Gets()
        {
            return await nationRepository.Gets();
        }

        /// <summary>
        /// Get nation by nation id
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpGet]
        [Route("/api/nation/get/{id}")]
        public async Task<Nation> Get(int id)
        {
            return await nationRepository.Get(id);
        }
        /// <summary>
        /// create/ update a nation
        /// </summary>
        /// <param name="request"></param>
        /// <returns></returns>
        [HttpPost]
        [Route("/api/nation/save")]
        public async Task<SaveNationResult> Save(SaveNationRequest request)
        {
            return await nationRepository.Save(request);
        }

        /// <summary>
        /// delete a nation
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpGet]
        [Route("/api/nation/delete/{deleteItem}")]
        public async Task<DeleteNationResult> Delete(string deleteItem)
        {
            return await nationRepository.Delete(deleteItem);
        }

        [HttpDelete]
        [Route("/api/nation/deletebyid/{id}")]
        public async Task<DeleteNationResult> DeleteById(int id)
        {
            return await nationRepository.DeleteById(id);
        }
    }

}
