using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IDPRO.web.Orientation
{
    public partial class REBUTTALS : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void rdb_SelectedIndexChanged(object sender, EventArgs e)
        {
            switch (rdb.SelectedValue)
            {
                case "1":
                    pnl1.Visible = false;
                    pnl2.Visible = false;
                    pnl3.Visible = false;
                    pnl4.Visible = false;
                    pnl5.Visible = false;
                    pnl6.Visible = false;
                    break;
                case "2":
                    pnl1.Visible = false;
                    pnl2.Visible = true;
                    pnl3.Visible = false;
                    pnl4.Visible = false;
                    pnl5.Visible = false;
                    pnl6.Visible = false;
                    break;
                case "3":
                    pnl3.Visible = true;
                     pnl2.Visible = false;
                    pnl1.Visible = false;
                    pnl4.Visible = false;
                    pnl5.Visible = false;
                    pnl6.Visible = false;
                    break;
                case "4":
                    pnl4.Visible = true;
                     pnl2.Visible = false;
                    pnl3.Visible = false;
                    pnl1.Visible = false;
                    pnl5.Visible = false;
                    pnl6.Visible = false;
                    break;
                case "5":
                    pnl5.Visible = true;
                     pnl2.Visible = false;
                    pnl3.Visible = false;
                    pnl4.Visible = false;
                    pnl1.Visible = false;
                    pnl6.Visible = false;
                    break;
                default:
                    pnl6.Visible = true;
                     pnl2.Visible = false;
                    pnl3.Visible = false;
                    pnl4.Visible = false;
                    pnl5.Visible = false;
                    pnl1.Visible = false;
                    break;
            }
        }
    }
}