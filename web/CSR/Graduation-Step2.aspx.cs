using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IDPRO.web.CSR
{
    public partial class Graduation_Step2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void rdbSure_SelectedIndexChanged(object sender, EventArgs e)
        {
            switch (rdbSure.SelectedItem.Text)
            {
                case "Sure!":
                    
                    pnlCourtesy3.Visible = true;
                    pnlNo.Visible = false;
               
                    
                    break;
                case "No":
                    
                    pnlCourtesy3.Visible = false;
                    pnlNo.Visible = true;
            
                  
                    break;
            }
        }
    }
}