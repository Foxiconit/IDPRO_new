using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IDPRO
{
    public partial class Lenders_AddLenderStep1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            switch (rdb.SelectedItem.Text)
            {
                case "Not cleared last 4 scheduled drafts":
                    Response.Redirect("Lenders-AddLenderStep2-1.aspx");
                    break;

                default:
                    Response.Redirect("Lenders-AddLenderStep2-2.aspx");
                    break;
            }
        }
    }
}