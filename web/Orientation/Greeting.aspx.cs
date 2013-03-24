using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IDPRO.web.Orientation
{
    public partial class Greeting : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            switch (rdb.SelectedItem.Text)
            {
                case "Want's to remove or add Lender":
                 
                    break;
                default:
                    Response.Redirect("Validation.aspx");
                    break;
            }
        }
    }
}