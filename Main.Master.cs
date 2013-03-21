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
using System.Web.UI.HtmlControls;

namespace IDPRO
{
    public partial class Main : System.Web.UI.MasterPage
    {
         MenuDao menudao = new MenuDao();
      
      //  public string str = "";
        //protected void Page_Load(object sender, EventArgs e)
        //{
        //    //if (!IsPostBack)
        //    //{
        //    //    fillmenu();
        //    //}
        //}
        protected void Page_Load(object sender, EventArgs e)
        {
            //cust.Visible = false;
            //ticketing.Visible = false;




            //string currentPath = Request.RawUrl;
            //if (currentPath.Contains("PersonalInfo.aspx"))
            //{
            //    cust.Visible = true;
            //    ticketing.Visible = true;
            //    sc.Visible = false;
            //    ob.Visible = false;
            //    cd.Visible = false;
            //    cs.Visible = false;
            //    neg.Visible = false;
            //    admin.Visible = false;

            //}
            //else if (currentPath.Contains("Customer.aspx") || (currentPath.Contains("BankInfo.aspx")) || (currentPath.Contains("Creditor.aspx")) || (currentPath.Contains("DateJournals.aspx")) || (currentPath.Contains("IDProtection.aspx")) || (currentPath.Contains("PlanInfo.aspx")) || (currentPath.Contains("TicketHistory.aspx")) || (currentPath.Contains("Drafts.aspx")))
            //{
            //    cust.Visible = true;
            //    ticketing.Visible = true;

            //    sc.Visible = false;
            //    ob.Visible = false;
            //    cd.Visible = false;
            //    cs.Visible = false;
            //    neg.Visible = false;
            //    admin.Visible = false;

            //}

        }
        //public void fillmenu()
        //{
        //    str = Session["username"].ToString();
        //    DataSet ds = new DataSet();
        //    ds = menudao.getmenu(str);
        //    grdmenu.DataSource = ds;
        //    grdmenu.DataBind();
        //}

        //protected void grdmenu_RowCommand(object sender, GridViewCommandEventArgs e)
        //{

        //}

        //protected void grdmenu_RowDataBound(object sender, GridViewRowEventArgs e)
        //{

        //    //HtmlAnchor anr = (HtmlAnchor)Master.FindControl("A3");

        //}
    }
}