using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IDPRO.web.CSR
{
    public partial class PaymentReschedule_Step1_1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
     
        protected void btnAdd_Click(object sender, EventArgs e)
        {
            Response.Redirect("PaymentReschedule-Step1-12.aspx");
        }
    }
}