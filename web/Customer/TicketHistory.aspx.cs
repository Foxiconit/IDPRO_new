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


namespace IDPRO.web.Customer
{
    public partial class TicketHistory : System.Web.UI.Page
    {   
        
        public long ticketid = 0;

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {

                TicketDao ticketdao = new TicketDao();
                ticketdao.getticketid(ticketid);
                fillTickethistory();
                fillTicketassignmenthistory();
                fillTicketnotehistory();

            }

        }
        public void fillTickethistory()
        {
            TicketDao ticketdao = new TicketDao();
            DataSet ds = new DataSet();
            ds = ticketdao.gettickethistory(ticketid);
            
            grdtickethistory.DataSource = ds;
            grdtickethistory.DataBind();
        }
        public void fillTicketassignmenthistory()
        {
            TicketDao ticketdao = new TicketDao();
            DataSet ds1 = new DataSet();
            ds1 = ticketdao.getticketassignmenthistory(ticketid);
            gridassignmenthistory.DataSource = ds1;
            gridassignmenthistory.DataBind();
        }
        public void fillTicketnotehistory()
        {
            TicketDao ticketdao = new TicketDao();
            DataSet ds2 = new DataSet();
            ds2 = ticketdao.getticketnodehistory(ticketid);
            gridnote.DataSource  = ds2;
            gridnote.DataBind();
        }

        protected void grdtickethistory_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "note")
            {
                grdnote.Visible = true;
            }

            if (e.CommandName == "assign")
            {
                grdassign.Visible = true;
            }
        }       
    }
}