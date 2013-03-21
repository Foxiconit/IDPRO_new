using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using IDPRO.csharp.DAO;
namespace IDPRO.csharp.Model
{
    public class customer
    {
        public long customerId { get; set; }

       public string dropphone1{get; set; }
         public string CoFirstName { get; set; }

        public string CoLastName { get; set; }

        public string FirstName { get; set; }

        public string LastName { get; set; }

        public string Address1 { get; set; }

        public string Address2 { get; set; }

        public string City { get; set; }

        public string States { get; set; }

        public string Zip { get; set; }

        public DateTime dob { get; set; }
        public DateTime Codob { get; set; }


        public string ssn { get; set; }
        
        public string Cossn { get; set; }

        public string Phone1 { get; set; }

        public string Phone2 { get; set; }

        public string PrimaryEmail { get; set; }

        public string SecondaryEmail { get; set; }

        public string phoneType1 { get; set; }

        public string phoneType2 { get; set; }

        public string customerType { get; set; }

    
        
    
    }
  

}