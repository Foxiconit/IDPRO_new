using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IDPRO
{
    public partial class Lenders_AddLenderStep2_2_1_2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            switch (rdb.SelectedItem.Text)
            {
                case "Yes":
                    Response.Redirect("ContactInformationChange.aspx");
                    break;

                default:
                    Response.Redirect("BankingInformationChange.aspx");
                    break;
            }
        }
    }
}