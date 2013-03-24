using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace IDPRO.csharp.Model
{
    public class AccountNotes
    {
        public long NoteID { get; set; }
        public long AccountId { get; set; }
        public string Note { get; set; }
        public DateTime NoteDate { get; set; }
        public string addedBY { get; set; }
    }
}