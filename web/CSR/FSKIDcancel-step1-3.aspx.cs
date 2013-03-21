using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IDPRO
{
    public partial class FSKIDcancel_step1_3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            switch (rdb.SelectedItem.Text)
            {
                case "FSK Not Sent":
                    Response.Redirect("FSKIDcancel-step1-3-1.aspx");
                    break;

                default:
                    Response.Redirect("FSKIDcancel-step1-3-2.aspx");
                    break;
            }
        }
    }
}