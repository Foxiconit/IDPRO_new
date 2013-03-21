using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IDPRO.web.CSR
{
    public partial class Lenders_Threatening_Step1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            switch (rdb.SelectedItem.Text)
            {
                case "Unlisted Lender":
                    Response.Redirect("Lenders-DebitingStep11.aspx");
                    break;
                default:
                    Response.Redirect("Lenders-Threatening-Step12.aspx");
                    break;
            }
        }
    }
}