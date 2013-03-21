using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IDPRO
{
    public partial class Lenders_Out : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            switch (rdb.SelectedItem.Text)
            {
                case "Yes":
                    Response.Redirect("SelectIssueType.aspx");
                    break;

                default:
                    Response.Redirect("CustomerService.aspx");
                    break;
            }
        }
    }
}