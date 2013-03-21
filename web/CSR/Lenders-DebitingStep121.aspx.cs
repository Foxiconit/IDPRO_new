using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IDPRO.web.CSR
{
    public partial class Lenders_DebitingStep121 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            pnlpayment.Visible = true;
            pnlCourtesy3.Visible = false;
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            switch (rdb.SelectedItem.Text)
            {
                case "Yes":
                    pnlpayment.Visible = true;
                    pnlCourtesy3.Visible = false;
                    break;
                default:
                    pnlpayment.Visible = false;
                    pnlCourtesy3.Visible = true;
                    break;
            }
        }
        protected void btnyes_Click(object sender, EventArgs e)
        {
            Response.Redirect("ChangeLender-Remove-Step1-2-1.aspx");
        }
    }
}