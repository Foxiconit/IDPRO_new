using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IDPRO.web.CSR
{
    public partial class FSKIDTrack : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            pnlpayment.Visible = true;
            pnlCourtesy3.Visible = false;
            pnlNo.Visible = false;
            pnlNoans.Visible = false;
            pnlfskno.Visible = false;
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            switch (rdb.SelectedValue)
            {
                case "1":
                    pnlpayment.Visible = true;                   
                    pnlCourtesy3.Visible = false;
                    pnlNo.Visible = false;
                    pnlNoans.Visible = false;
                    pnlfskno.Visible = false;
                    break;
                case "2":
                    pnlpayment.Visible = false;                   
                    pnlCourtesy3.Visible = true;
                    pnlNo.Visible = false;
                    pnlNoans.Visible = false;
                    pnlfskno.Visible = false;
                    break;
                case "3":
                    Response.Redirect("FSKIDTrack-3.aspx");
                    pnlpayment.Visible = false;                  
                    pnlCourtesy3.Visible = false;
                    pnlNo.Visible = false;
                    pnlNoans.Visible = false;
                    pnlfskno.Visible = false;
                    break;
                case "4":
                    pnlpayment.Visible = false;                   
                    pnlCourtesy3.Visible = false;
                    pnlNo.Visible = true;
                    pnlNoans.Visible = false;
                    pnlfskno.Visible = false;
                    break;
                default:
                    pnlfskno.Visible = true;
                    pnlpayment.Visible = false;
                    pnlCourtesy3.Visible = false;                   
                    pnlNo.Visible = false;
                    pnlNoans.Visible = true;
                    break;
            }
        }
      
    }
}