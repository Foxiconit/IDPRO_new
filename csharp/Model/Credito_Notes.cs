using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace IDPRO.csharp.Model
{
    public class Credito_Notes
    {

        //please create a table called credit notes(note id,note,date,note_by)

        // like every ticket has multiple notes-- every credit will have multiple notes

        //put getter setters here.


        public long NoteID { get; set; }
        public long creditId { get; set; }
        public string Note { get; set; }
        public DateTime NoteDate { get; set; }
        public string addedBY { get; set; }

        
    }
}