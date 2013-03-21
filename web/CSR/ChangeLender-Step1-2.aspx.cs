using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IDPRO
{
    public partial class ChangeLender_Step1_2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            switch (rdb.SelectedItem.Text)
            {
                case "Remove Lender":
                    Response.Redirect("ChangeLender-Remove-Step1-2-1.aspx");
                    break;

                case "Change Infomation":
                    Response.Redirect("ChangeLender-Change-Step2-1.aspx");
                    break;
            }
        }
    }
}