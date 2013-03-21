using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IDPRO.web.CSR
{
    public partial class Courtesy_Call_step1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            switch (rdb.SelectedItem.Text)
            {
                case "Customer Answers":
                    Response.Redirect("Courtesy-Call-step11.aspx");
                    pnlaccountchange.Visible = false;
                    break;
                default:                    
                    pnlaccountchange.Visible = true;
                    break;
            }
        }

        protected void rdb_SelectedIndexChanged(object sender, EventArgs e)
        {
            switch (rdb.SelectedItem.Text)
            {
                case "Customer Answers":
                    
                    pnlaccountchange.Visible = false;
                    break;
                default:
                    pnlaccountchange.Visible = true;
                    break;
            }
        }
    }
}