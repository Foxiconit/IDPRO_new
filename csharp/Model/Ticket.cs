using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using IDPRO.csharp.DAO;

namespace IDPRO.csharp.Model
{
   
    public class Ticket
    {
      
        //big int in table is long in c#--- please change alll places where you have used id ias other than long
        public long TicketID { get; set; }
        public long AccountID { get; set; }

        
        public string AssignTo { get; set; }
        public string openby { get; set; }

        public string closeby { get; set; }
        public string Status { get; set; }
        public string Priority { get; set; }

        public DateTime OpenDate { get; set; }
        public DateTime CloseDate { get; set; }
        public DateTime AssignDate { get; set; }
        public List<TicketNote> ticketNotes { get; set; }
        public List<TicketAssignment> ticketAssignment { get; set; }
       
        public string TicketTypeString { get; set; }
        //public string ticketgetid { get; set; } //what is this
        
        //one ticket will have multiple notes so create model like Ticket Note and then put alist here like
        // public List<Ticket_Note> notes {get;set;}-- remove all below note. it's one to many relationship

     //   public long NoteID { get; set; }
      //  public string Note { get; set; }
       // public DateTime NoteDate { get; set; }

       // public int TicketTypeId { get; set; }
       // public int PriorityInt_TicketType { get; set; }

        

       //same here assignment will be object like Ticket_Assignments and here there has to be list--one to many relationship
       // public string Assignment { get; set; }
       // public string AssignBy { get; set; }


       
       
       
    }
  
}