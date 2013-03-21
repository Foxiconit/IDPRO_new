using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IDPRO.web.CSR
{
    public partial class EscalationUpsetCust_Step12 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            switch (rdb.SelectedItem.Text)
            {
                case "My lenders are still calling me!":
                    Response.Redirect("EscalationUpsetCust-Step11.aspx");
                    break;
                case "My lenders said they don’t work with you":
                    Response.Redirect("EscalationCancel-Step12.aspx");
                    break;
                case "You drafted me the wrong amount/on the wrong date/when you shouldn’t have":
                    pnldrafting.Visible = true;

                    break;
                default:
                    Response.Redirect("EscalationCancel-Step14.aspx");
                    break;
            }
        }
        protected void btnyes_Click(object sender, EventArgs e)
        {
            Response.Redirect("EscalationRefundNSF.aspx");
        }
    }
}