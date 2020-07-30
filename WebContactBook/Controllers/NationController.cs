using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System.Collections.Generic;
using System.Threading.Tasks;
using WebContactBook.DAL.Interface;
using WebContactBook.Domain.Responses.Nation;

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


        /// <summary>
        /// Get all department in DB
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        [Route("/api/nation/gets")]
        public async Task<IEnumerable<Nation>> Gets()
        {
            return await nationRepository.Gets();
        }

        /// <summary>
        /// Get department by departmentid
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpGet]
        [Route("/api/nation/get/{id}")]
        public async Task<Nation> Get(int id)
        {
            return await nationRepository.Get(id);
        }

        [HttpPost]
        [Route("/api/nation/save")]
        public async Task<SaveNationResult> Save(Nation request)
        {
            return await nationRepository.Save(request);
        }

        [HttpDelete]
        [Route("/api/nation/delete/{id}")]
        public async Task<DeleteNationResult> Delete(int id)
        {
            return await nationRepository.Delete(id);
        }

        //[HttpGet("/api/department/search")]
        //public async Task<IEnumerable<Department>> Search(string keyword)
        //{
        //    //keyword = string.IsNullOrEmpty(keyword) ? string.Empty : keyword;
        //    return await departmentService.Search(keyword);
    }

}
