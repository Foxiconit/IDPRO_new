using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace IDPRO.web.Customer
{
    public partial class Creditor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BindGrid();
        }

        public void BindGrid()
        {
            DataSet ds = new DataSet();
            //ds.ReadXml(@"D:\Hosting\9847121\html\demo\course.xml");
            //  ds.ReadXml(@"C:\Users\dev\Documents\Visual Studio 2010\WebSites\Driving2\course.xml");
            string rootPath = System.Web.HttpContext.Current.Server.MapPath("~/");
            ds.ReadXml(rootPath + "web/customer/Creditor.xml");
            GridView1.DataSource = ds;
            GridView1.DataBind();

        }

       

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            pnlcreditordetails.Visible = true;

        }
    }
}