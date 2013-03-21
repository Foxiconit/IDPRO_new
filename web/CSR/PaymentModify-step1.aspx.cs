using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IDPRO.web.CSR
{
    public partial class PaymentModify_step1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            pnlpayment.Visible = true;
            pnlaccountchange.Visible = true;
            pnlNo.Visible = false;

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            switch (rdb.SelectedItem.Text)
            {
                case "Customer is on Payment Plan":
                    pnlpayment.Visible = true;
                    pnlaccountchange.Visible = true;
                    pnlNo.Visible = false;

                    break;
                default:
                    Response.Redirect("PaymentModify-step11.aspx");
                    pnlpayment.Visible = false;
                    pnlaccountchange.Visible = false;
                    pnlNo.Visible = false;

                    break;
            }
        }
        protected void btnyes_Click(object sender, EventArgs e)
        {
            switch (rdbSure.SelectedItem.Text)
            {
                case "Customer insists":
                    Response.Redirect("PaymentModify-step11.aspx");
                    pnlpayment.Visible = false;
                    pnlaccountchange.Visible = false;
                    pnlNo.Visible = false;
                    break;
                default:
                    pnlpayment.Visible = false;
                    pnlaccountchange.Visible = false;
                    pnlNo.Visible = true;

                    break;
            }
        }
        protected void btncon_Click(object sender, EventArgs e)
        {
            switch (rdbconfirm.SelectedValue)
            { 
                case "1":
                    Response.Redirect("SelectIssueType.aspx");
                    break;
                default:
                    Response.Redirect("CustomerService.aspx");
                    break;
            }
        }
    }
}