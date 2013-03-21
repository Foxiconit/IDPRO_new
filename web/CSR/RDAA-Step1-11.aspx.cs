using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IDPRO
{
    public partial class RDAA_Step1_11 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            switch (rdb.SelectedItem.Text)
            {
                case "Yes":
                    Response.Redirect("RDAA-Step1-11-1.aspx");
                    break;

                default:
                    Response.Redirect("RDAA-Step1-11-2.aspx");
                    break;
            }
        }
    }
}