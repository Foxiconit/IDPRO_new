using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IDPRO
{
    public partial class PaymentWithdrawal_step1_2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            switch (rdb.SelectedItem.Text)
            {
                case "Customer Declines":
                    Response.Redirect("PaymentWithdrawal-step1-11.aspx");
                    break;

                default:
                    Response.Redirect("PaymentWithdrawal-step1-12.aspx");
                    break;
            }
        }
    }
}