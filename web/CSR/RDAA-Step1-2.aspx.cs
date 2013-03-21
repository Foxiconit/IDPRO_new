using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IDPRO
{
    public partial class RDAA_Step1_2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void rdb_SelectedIndexChanged(object sender, EventArgs e)
        {
            switch (rdb.SelectedItem.Text)
            {
                case "Yes":
                    pnlyes.Visible = true;
                    pnlno.Visible = false;
                    pnlnomultiple.Visible = false;
                    break;
                case "No":
                    pnlyes.Visible = false;
                    pnlno.Visible = true;
                    pnlnomultiple.Visible = false;
                    break;
                default:
                    pnlyes.Visible = false;
                    pnlno.Visible = false;
                    pnlnomultiple.Visible = true;
                    break;
            }
        }
    }
}