using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using IDPRO.csharp.Model;
using IDPRO.csharp.DAO;
using IDPRO.csharp.Services;
using System.Data.SqlClient;
using System.Data;
using IDPRO.csharp.Constants;
namespace IDPRO
{
    public partial class SearchCustomer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("~/EmployeeLogin.aspx");
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            CustomerDAO customersearch = new CustomerDAO();

            DataSet ds = new DataSet();
            ds = customersearch.getcustomersarch(txtClient.Text.Trim());
            if (ds.Tables[0].Rows.Count > 0)
            {
                lblmsg.Text = "Customer found with the " + txtClient.Text + "";

            }
            else
            {

                Session["result"] = "1";

                Response.Redirect("PersonalInfo.aspx");

            }
        }
    }
}