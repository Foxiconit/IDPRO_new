using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IDPRO.web.CSR
{
    public partial class Lenders_HarassingCust_Step12 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            pnlpayment.Visible = true;
            pnlCourtesy3.Visible = false;
            Panel1.Visible = false;
            Panel2.Visible = false;
        }
        protected void rdb_SelectedIndexChanged(object sender, EventArgs e)
        {
            switch (rdb.SelectedItem.Text)
            {
                case "At home!":
                    pnlpayment.Visible = true;
                    pnlCourtesy3.Visible = false;
                    Panel1.Visible = false;
                    Panel2.Visible = false;
                    break;
                default:
                    pnlpayment.Visible = false;
                    pnlCourtesy3.Visible = true;
                    Panel1.Visible = false;
                    Panel2.Visible = false;
                    break;
            }
        }
        protected void btnyes_Click(object sender, EventArgs e)
        {
            switch (rdbSure.SelectedValue)
            {
                case "1":
                    pnlpayment.Visible = false;
                    pnlCourtesy3.Visible = true;
                    Panel1.Visible = true;
                    Panel2.Visible = false;
                    break;
                default:
                    pnlpayment.Visible = false;
                    pnlCourtesy3.Visible = true;
                    Panel2.Visible = true;
                    Panel1.Visible = false;
                    break;
            }
        }
    }
}