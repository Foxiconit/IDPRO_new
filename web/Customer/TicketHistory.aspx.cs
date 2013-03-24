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

       // public long ticketid = 103;

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {

                List<Ticket> ticket = new List<Ticket>();
                
                TicketDao ticketdao = new TicketDao();

                ticket = ticketdao.getticketsByAccountid(1006);

                fillTicketGrid(ticket);


            }

        }

        public void fillTicketGrid(List<Ticket> ticket)
        {
            grdtickethistory.DataSource = ticket;
            grdtickethistory.DataBind();
        }



        protected void grdtickethistory_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "note")
            {

                TicketNoteDAO ticketnotedao = new TicketNoteDAO();
                List<TicketNote> ticketnotelist = new List<TicketNote>();
                Int32 ticketid = Convert.ToInt32(e.CommandArgument);

                ticketnotelist = ticketnotedao.getticketnotebyid(ticketid);
                gridnote.DataSource = ticketnotelist;
                gridnote.DataBind();
                grdnote.Visible = true;
            }

            if (e.CommandName == "assign")
            {
                grdassign.Visible = true;
                TicketAssignmentDao ticketassignmentdao = new TicketAssignmentDao();
                List<TicketAssignment> ticketassignmentlist = new List<TicketAssignment>();
                Int32 ticketid = Convert.ToInt32(e.CommandArgument);

                ticketassignmentlist = ticketassignmentdao.getticketassignmentbyid(ticketid);
                gridassignmenthistory.DataSource = ticketassignmentlist;
                gridassignmenthistory.DataBind();
            }
        }
    }
}