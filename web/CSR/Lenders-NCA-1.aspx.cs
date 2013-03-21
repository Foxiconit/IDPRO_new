using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IDPRO.web.CSR
{
    public partial class Lenders_NCA_1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            pnlpayment.Visible = true;
            pnlCourtesy3.Visible = false;
        }
        protected void rdb_SelectedIndexChanged(object sender, EventArgs e)
        {
            switch (rdb.SelectedItem.Text)
            { 
                case "I’m Sure!":
                    pnlpayment.Visible = true;
                    pnlCourtesy3.Visible = false;
                    break;
                default:
                    pnlpayment.Visible = false;
                    pnlCourtesy3.Visible = true;
                    break;
            }
        }
    }
}