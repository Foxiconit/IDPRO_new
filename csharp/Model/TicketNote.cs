using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace IDPRO.csharp.Model
{
    public class TicketNote
    {
       
        public long NoteID { get; set; }
        public long TicketID { get; set; }
        public string Note { get; set; }
        public DateTime NoteDate { get; set; }
    }
}