using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IDPRO.web.CSR
{
    public partial class Lenders_DebitingStep11 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            switch (rdb.SelectedItem.Text)
            { 
                case"Yes!":
                    Response.Redirect("Lenders-AddLenderStep2-2-1.aspx");
                    pnlpayment.Visible = false;
                    break;
                default:
                    pnlpayment.Visible = true;
                    break;
            }
        }
        protected void btnyes_Click(object sender, EventArgs e)
        {
            switch (rdb.SelectedItem.Text)
            {
                case "Yes":
                    Response.Redirect("SelectIssueType.aspx");
                    break;

                default:
                    Response.Redirect("CustomerService.aspx");
                    break;
            }
        }
    }
}