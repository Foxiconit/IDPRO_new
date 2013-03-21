using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IDPRO.web.CSR
{
    public partial class Graduation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            pnlpayment.Visible = true;
           
            pnlNoans.Visible = false;
        }
       
        protected void rdb_SelectedIndexChanged(object sender, EventArgs e)
        {
            switch (rdb.SelectedItem.Text)
            {
                case "Customer Answers":
                    pnlpayment.Visible = true;
                   
                    pnlNoans.Visible = false;
                    break;
                default:
                    pnlpayment.Visible = false;
                 
                    pnlNoans.Visible = true;
                    break;
            }
        }

        
    }
}