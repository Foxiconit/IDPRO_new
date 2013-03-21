using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IDPRO.web.CSR
{
    public partial class PaymentModify_step11 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            switch (rdb.SelectedItem.Text)
            {
                case "Push Payment":
                    Response.Redirect("PaymentModify-step11-1.aspx");
                    break;
                case "Partial Payment":
                    Response.Redirect("PaymentModify-step11-2.aspx");
                    break;
                case "Push Payment , EOP":
                    Response.Redirect("PaymentModify-step11-3.aspx");
                    break;
                case "Increase Payment":
                    Response.Redirect("PaymentModify-step11-4.aspx");
                    break;
                default:
                    panel1.Visible = true;
                    panel2.Visible = false;
                    break;
            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            panel2.Visible = true;
            panel1.Visible = false;
        }
      
    }
}