using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IDPRO.web.CSR
{
    public partial class PaymentReschedule_Step1_12_1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            pnlaccountchange.Visible = true;
            pnlCourtesy3.Visible = true;
            pnlNo.Visible = true;
            pnlpayment.Visible = true;
            pnlNoans.Visible = false;
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            switch (rdb.SelectedItem.Text)
            { 
                case "Yes":
                    pnlaccountchange.Visible = true;
                    pnlCourtesy3.Visible = true;
                    pnlNo.Visible = true;
                    pnlpayment.Visible = true;
                    pnlNoans.Visible = false;
                    break;
                default:
                    pnlaccountchange.Visible = false;
                    pnlCourtesy3.Visible = false;
                    pnlNo.Visible = false;
                    pnlpayment.Visible = false;
                    pnlNoans.Visible = true;
                    break;
            }
        }
    }
}