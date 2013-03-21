using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IDPRO.web.CSR
{
    public partial class EscalationRefundNSF : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            pnlpayment.Visible = true;
            pnlwrong.Visible = false;
            pnlother.Visible = false;
        }
        protected void rdbEscalatione_SelectedIndexChanged(object sender, EventArgs e)
        {
            switch (rdbEscalatione.SelectedValue)
            {
                case "1":
                    pnlpayment.Visible = true;
                    pnlwrong.Visible = false;
                    pnlother.Visible = false;
                    break;
                case "2":
                    pnlpayment.Visible = false;
                    pnlwrong.Visible = true;
                    pnlother.Visible = false;
                    break;
                default:
                     pnlpayment.Visible = false;
                    pnlwrong.Visible = false;
                    pnlother.Visible = true;
                    break;
            }
        }
    }
}