using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IDPRO.web.CSR
{
    public partial class Lenders_Settlement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            pnlpayment.Visible = true;
            pnlaccountchange.Visible = true;
            pnlNo.Visible = false;
            pnlno1.Visible = true;
            pnlCourtesy3.Visible = false;
            pnlstop.Visible = false;
        }
        protected void rdb_SelectedIndexChanged(object sender, EventArgs e)
        {
            switch (rdb.SelectedItem.Text)
            {
                case "Customer Answers":
                    pnlpayment.Visible = true;
                    pnlaccountchange.Visible = true;
                    pnlNo.Visible = false;
                    pnlno1.Visible = true;
                    pnlCourtesy3.Visible = false;
                    pnlstop.Visible = false;
                    break;
                default:
                    pnlpayment.Visible = false;
                    pnlaccountchange.Visible = false;
                    pnlNo.Visible = false;
                    pnlno1.Visible = false;
                    pnlCourtesy3.Visible = true;
                    pnlstop.Visible = false;
                    break;
            }
        }
        protected void btnrecording_Click(object sender, EventArgs e)
        {
            pnlpayment.Visible = false;
            pnlaccountchange.Visible = false;
            pnlNo.Visible = true;
            pnlno1.Visible = false;
            pnlCourtesy3.Visible = false;
            pnlstop.Visible = false;
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            pnlpayment.Visible = false;
            pnlaccountchange.Visible = false;
            pnlNo.Visible = false;
            pnlno1.Visible = false;
            pnlCourtesy3.Visible = false;
            pnlstop.Visible = true;
        }
    }
}