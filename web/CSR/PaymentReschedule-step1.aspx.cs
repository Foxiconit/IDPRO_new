using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IDPRO.web.CSR
{
    public partial class PaymentReschedule_step1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void rdb_SelectedIndexChanged(object sender, EventArgs e)
        {
            switch (rdb.SelectedItem.Text)
            {
                case "Customer Answers":
                   
                    pnlpayment.Visible = false;
                    break;
                default:
                    pnlpayment.Visible = true;
                    break;
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            switch (rdb.SelectedItem.Text)
            {
                case "Customer Answers":
                    Response.Redirect("PaymentReschedule-Step1-1.aspx");
                    pnlpayment.Visible = false;
                    break;
                default:
                    pnlpayment.Visible = true;
                    break;
            }
        }
    }
}