using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IDPRO.web.CSR
{
    public partial class PaymentModify_step11_4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            pnl1.Visible = true;
            pnl2.Visible = false;
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            pnl2 .Visible = true;
            pnl1.Visible = false;
        }
    }
}