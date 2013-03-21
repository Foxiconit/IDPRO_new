using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IDPRO.web.CSR
{
    public partial class PaymentModify_step11_11_1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {          
               pnlNo.Visible = true;                              
          
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