using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IDPRO.web.CSR
{
    public partial class Lenders_DebitingStep12 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            switch (rdb.SelectedItem.Text)
            {
                case "Storefront":
                    pnlpayment.Visible = false;
                    Response.Redirect("Lenders-DebitingStep121.aspx");
                    break;
                default:
                    pnlpayment.Visible = true;
                    break;
            }
        }
    }
}