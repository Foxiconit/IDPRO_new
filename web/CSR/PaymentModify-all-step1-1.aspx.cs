using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IDPRO
{
    public partial class PaymentModify_all_step1_1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            switch (rdb.SelectedItem.Text)
            {
                case "Customer Declines":
                    Response.Redirect("PaymentModify-all-step1-11.aspx");
                    break;

                default:
                    Response.Redirect("PaymentModify-all-step1-2.aspx");
                    break;
            }
        }
    }
}