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

                Ticket ticket = new Ticket();
                ticket.AccountID = 1006;

                TicketDao ticketdao = new TicketDao();
                ticket = ticketdao.getticketid(ticket.AccountID);
                fillTicketGrid(ticket.TicketID);


            }

        }

        public void fillTicketGrid(long ticketid)
        {
            Ticket ticketobj = new Ticket();
            List<Ticket> listTickets = new List<Ticket>();
            Ticket ticket = new TicketService().getticketbyticketid(ticketid);
            listTickets.Add(ticket);
            grdtickethistory.DataSource = listTickets;
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