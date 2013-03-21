using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IDPRO.web.CSR
{
    public partial class Lenders_NCA : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            pnlpayment.Visible = true;
            pnlaccountchange.Visible = true;
            pnlCourtesy3.Visible = false;
            pnlNo.Visible = false;
        }
        
        protected void btnyes_Click(object sender, EventArgs e)
        {
            switch (rdbSure.SelectedItem.Text)
            {
                case "Absolutely":
                    pnlpayment.Visible = false;
                    pnlCourtesy3.Visible = false;
                    pnlaccountchange.Visible = true;
                    pnlNo.Visible = true;
                   
                    break;
                case "No":
                    Response.Redirect("Lenders-NCA-1.aspx");                   
                    break;
            }
        }

        protected void rdb_SelectedIndexChanged(object sender, EventArgs e)
        {
            switch (rdb.SelectedItem.Text)
            {
                case "Customer Answers":
                    pnlpayment.Visible = true;
                    pnlaccountchange.Visible = true;
                    pnlCourtesy3.Visible = false;
                    pnlNo.Visible = false;

                    break;
                default:
                    pnlpayment.Visible = false;
                    pnlCourtesy3.Visible = true;
                    pnlaccountchange.Visible = false;
                    pnlNo.Visible = false;

                    break;
            }
        }
    }
}