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
    public partial class Lenders_AddLenderStep2 : System.Web.UI.Page
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
            ds.ReadXml(rootPath + "Lenders.xml");
            GridView1.DataSource = ds;
            GridView1.DataBind();

        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            switch (rdb.SelectedItem.Text)
            {
                case "Lender Not Exist":
                    Response.Redirect("Lenders-AddLenderStep2-2-1.aspx");
                    pnlnotexist.Visible = false;
                    break;

                default:
                   
                    Response.Redirect("Lenders-AddLenderStep2-2-1.aspx");
                    break;
            }
            

                   
        }

        protected void rdb_SelectedIndexChanged(object sender, EventArgs e)
        {
            switch (rdb.SelectedItem.Text)
            {
                case "Lender Not Exist":
                    pnlnotexist.Visible = false;
                    break;

                default:
                    pnlnotexist.Visible = true;
                    Button2.Focus();
                     
                    // Response.Redirect("CustomerService.aspx");
                    break;
            }
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            switch (rdb1.SelectedItem.Text)
            {
                case "Yes":
                    Response.Redirect("Lenders-AddLenderStep2-2-1.aspx");
                    
                    break;

                default:

                    Response.Redirect("Lenders-Out.aspx");
                    break;
            }
        }
    }
}