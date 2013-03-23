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
        public string addedby { get; set; }
        // rohit are we not putting here who added note


        // oh man we have to add who added the note-- values will come from session username


        //can you please fix??yes sure
    }
}