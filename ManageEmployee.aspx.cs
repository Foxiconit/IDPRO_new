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
    public partial class ManageEmployee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnsearch_Click(object sender, EventArgs e)
        {
            EmployeeDao empsearch = new EmployeeDao();
            DataSet ds = new DataSet();
            ds = empsearch.getemployeedetailsearch(txtlast.Text.Trim());
            if (ds.Tables[0].Rows.Count > 0)
            {
                grdemp.DataSource = ds;
                grdemp.DataBind();
            }
            else
            {
                grdemp.DataBind();
            }
        }
    }
}