using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace IDPRO.csharp.Model
{

    public class TicketAssignment
    {
       
        public long TicketID { get; set; }
        public string AssignBy { get; set; }
        public string AssignTo { get; set; }
        public DateTime AssignDate { get; set; }
    }
}