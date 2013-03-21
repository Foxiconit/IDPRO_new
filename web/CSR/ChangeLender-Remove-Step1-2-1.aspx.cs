using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IDPRO
{
    public partial class ChangeLender_Remove_Step1_2_1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            switch (rdb.SelectedItem.Text)
            {
                case "Yes":
                    Response.Redirect("ChangeLender-Remove-Step1-2-2.aspx");
                    break;

                default:
                    Response.Redirect("ChangeLender-Remove-Step1-2-3.aspx");
                    break;
            }
        }
    }
}