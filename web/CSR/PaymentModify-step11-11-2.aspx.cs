using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IDPRO.web.CSR
{
    public partial class PaymentModify_step11_11_2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            switch (rdbyes.SelectedItem.Text)
            { 
                case"Yes":
                    Response.Redirect("PaymentModify-step11-11-1.aspx");
                    break;
                default:
                    pnlNo.Visible = true;
                    Panel1.Visible = false;
                    Panel2.Visible = false;
                    break;
            }

        }
        protected void btncon_Click(object sender, EventArgs e)
        {
            switch (rdbapproved.SelectedValue)
            {
                case "1":
                    pnlNo.Visible = false;
                    Panel1.Visible = true;
                    Panel2.Visible = false;
                    break;
                default:
                     pnlNo.Visible = false;
                    Panel1.Visible = false;
                    Panel2.Visible = true;
                    break;
            }
        }
        protected void btn2_Click(object sender, EventArgs e)
        {
            switch (rdbcon.SelectedValue)
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