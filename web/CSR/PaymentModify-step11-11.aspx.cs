using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IDPRO.web.CSR
{
    public partial class PaymentModify_step11_11 : System.Web.UI.Page
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
            switch (rdb.SelectedValue)
            { 
                case "1":
                    Response.Redirect("PaymentModify-step11-11-1.aspx");
                    break;
                default:
                    Response.Redirect("PaymentModify-step11-11-2.aspx");
                    break;
            }
            
        }
    }
}