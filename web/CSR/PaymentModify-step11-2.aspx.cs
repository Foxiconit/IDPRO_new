using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IDPRO.web.CSR
{
    public partial class PaymentModify_step11_2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            pnlaccountchange.Visible = true;
            pnlpayment.Visible = true;
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("PaymentModify-step11-21.aspx");
        }
    }
}