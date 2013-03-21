using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IDPRO.web.CSR
{
    public partial class Courtesy_Call_step11 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            switch (rdb.SelectedItem.Text)
            {
                case "When will I get my first settlement?":
                    pnlpayment.Visible = true;
                    pnlaccountchange.Visible = false;
                    pnlCourtesy3.Visible = false;
                    break;
                case "What do I do if my lenders call me?":
                    pnlpayment.Visible = false;
                    pnlCourtesy3.Visible = false;
                    pnlaccountchange.Visible = true;
                    break;
                default:
                    pnlpayment.Visible = false;
                    pnlCourtesy3.Visible = true;
                    pnlaccountchange.Visible = false;
                    break;
            }
        }
    }
}