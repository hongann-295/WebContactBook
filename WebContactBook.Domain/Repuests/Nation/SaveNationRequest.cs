using System;
using System.Collections.Generic;
using System.Text;

namespace WebContactBook.Domain.Repuests.Nation
{
   public class SaveNationRequest
    {
        public int NationId { get; set; }
        public string NationName { get; set; }
        public int Students { get; set; }
    }
}
