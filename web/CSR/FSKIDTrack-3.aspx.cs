using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IDPRO.web.CSR
{
    public partial class FSKIDTrack_3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            switch (rdb.SelectedItem.Text)
            {
                case "Customer keeps kit":
                    pnlpayment.Visible = true;
                    pnlCourtesy3.Visible = false;
                    break;
                default:
                    pnlCourtesy3.Visible = true;
                    pnlpayment.Visible = false;
                    break;
            }
        }
    }
}