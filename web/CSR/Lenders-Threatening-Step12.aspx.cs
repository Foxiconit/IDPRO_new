using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IDPRO.web.CSR
{
    public partial class Lenders_Threatening_Step12 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            pnlpayment.Visible = true;
            pnlaccountchange.Visible = false;
            pnlCourtesy3.Visible = false;
            pnlNo.Visible = false;
            pnlNoans.Visible = false;
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            switch (rdb.SelectedItem.Text)
            {
                case "Yes":
                    pnlpayment.Visible = true;
                    pnlaccountchange.Visible = false;
                    pnlCourtesy3.Visible = false;
                    pnlNo.Visible = false;
                    pnlNoans.Visible = false;
                    break;
                default:
                    pnlpayment.Visible = false;
                    pnlCourtesy3.Visible = true;
                    pnlaccountchange.Visible = true;
                    pnlNo.Visible = false;
                    pnlNoans.Visible = false;
                    break;
            }
        }
        protected void btnyes_Click(object sender, EventArgs e)
        {
            switch (rdbSure.SelectedItem.Text)
            {
                case "To sue me!":
                    pnlpayment.Visible = false;
                    pnlCourtesy3.Visible = false;
                    pnlaccountchange.Visible = true;
                    pnlNo.Visible = true;
                    pnlNoans.Visible = false;
                    break;
                case "To arrest me!":
                    pnlpayment.Visible = false;
                    pnlCourtesy3.Visible = false;
                    pnlaccountchange.Visible = true;
                    pnlNo.Visible = false;
                    pnlNoans.Visible = true;
                    break;
            }
        }
    }
}