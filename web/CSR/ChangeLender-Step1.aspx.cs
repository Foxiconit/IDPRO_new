using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IDPRO
{
    public partial class ChangeLender_Step1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            switch (rdb.SelectedItem.Text)
            {
                case "Lender1":
                    Response.Redirect("ChangeLender-Step1-2.aspx");
                    break;

                 case "Lender2":
                    Response.Redirect("ChangeLender-Step1-2.aspx");
                    break;
                 case "Lender3":
                    Response.Redirect("ChangeLender-Step1-2.aspx");
                    break;
                 case "Lender4":
                    Response.Redirect("ChangeLender-Step1-2.aspx");
                    break;

            }
        }
    }
}