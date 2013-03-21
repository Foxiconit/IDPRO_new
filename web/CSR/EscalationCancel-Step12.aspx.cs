using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IDPRO.web.CSR
{
    public partial class EscalationCancel_Step12 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            switch (rdb.SelectedItem.Text)
            {
                case "OK, I will try that.":
                    pnlpayment.Visible = true;
                    pnlaccountchange.Visible = false;
                    break;
                default:
                    pnlpayment.Visible = false;
                    pnlaccountchange.Visible = true;
                    break;
            }
        }
        protected void btnNO_Click(object sender, EventArgs e)
        {
            switch (rdbNO.SelectedItem.Text)
            {
                case "Manager Available":
                    Response.Redirect("EscalationCancel-111.aspx");
                    break;

                default:
                    Response.Redirect("EscalationCancel-112.aspx");
                    break;
            }
        }
    }
}