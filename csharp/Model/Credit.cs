using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace IDPRO.csharp.Model
{
    public class Credit
    {
        //put all getter setter based on Credit tableok
        public long Credit_Id { get; set; }
        public long Account_Id { get; set; }  //this is account id and has to be long
        public string Creditor_Name { get; set; }
        public string Account_Number { get; set; }
        public float Orignal_Balance { get; set; }
        public string Loan_Type { get; set; }
        public string Current_Creditor_Name { get; set; }
        public string Current_Creditor_Account_No { get; set; }
        public string Status { get; set; }
        public float Balance_at_Settlement { get; set; }
        public string Settlement_Type { get; set; }
        public float Settlement_Amount { get; set; }
        public float Fees_Amount { get; set; }
        public DateTime Settlement_Date { get; set; }
        public string Settlement_Creditor_Name { get; set; }
        public string AddedBy { get; set; }
        public DateTime AddedDate { get; set; }
        public string Last_Updatedby { get; set; }
        public DateTime Last_UpdatedDate { get; set; }

    }
}