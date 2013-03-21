using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


namespace IDPRO
{
    public partial class CustomerService : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BindGrid();
            Session["AccountID"] = "1006";
        }

        public void BindGrid()
        {
            DataSet ds = new DataSet();
            //ds.ReadXml(@"D:\Hosting\9847121\html\demo\course.xml");
            //  ds.ReadXml(@"C:\Users\dev\Documents\Visual Studio 2010\WebSites\Driving2\course.xml");
            string rootPath = System.Web.HttpContext.Current.Server.MapPath("~/");
            ds.ReadXml(rootPath + "CustomerService.xml");
            GridView1.DataSource = ds;
            GridView1.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            GridView1.Visible = true;
        }

    }
}