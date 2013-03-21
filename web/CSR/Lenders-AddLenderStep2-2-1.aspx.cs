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
    public partial class Lenders_AddLenderStep3 : System.Web.UI.Page
    {
        
        
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                fillTicketAssigned();
                fillTicketTicketPriority();
                filltickettype();
            }
        }
        
        protected void btnSave_Click(object sender, EventArgs e)
        {
            pnlticket.Visible = true;

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            TicketService ticketservice = new TicketService();
            TicketAssignment ticketassignment = new TicketAssignment();
            Ticket ticket = new Ticket();
            TicketNode ticketnode = new TicketNode();
            ticket.TicketTypeString = drptickettype.SelectedItem.Text.Trim();
            ticket.Priority = dropPriorty.Text.Trim();
            ticket.AssignTo = DropAssignedTo.Text.Trim();
            ticketnode.Note = txtdescription.Text.Trim();
            ticket.AssignDate = System.DateTime.Now;
            string msg;
            msg = ticketservice.TicketAdd(ticket, ticketassignment, ticketnode);
            //Response.Redirect("Lenders-TicketAdded.aspx");
            if (msg == "Success")
            {

                lblmsg.Text = "Thanks record saved successfully";
                pnlmsg.Visible = true;
                pnlticket.Visible = false;
            }
            else
            {
                pnlmsg.Visible = true;
                pnlticket.Visible = false;
                lblmsg.Text = "Problem Occur! Try after sometime";
            }
        }
        public void filltickettype()
        {
            TicketDao ticketdao = new TicketDao();
            DataSet ds = new DataSet();
            ds = ticketdao.gettickettype();
            drptickettype.DataSource = ds;
            drptickettype.DataTextField = "TicketType";
            drptickettype.DataValueField = "Priority";
            drptickettype.DataBind();
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
        public void fillTicketAssigned()
        {
            TicketDao ticketdao = new TicketDao();
            DataSet ds = new DataSet();
            ds = ticketdao.getAssigned();
            DropAssignedTo.DataSource = ds;
            DropAssignedTo.DataTextField = "Description";
            DropAssignedTo.DataBind();
        }
        public void fillTicketTicketPriority()
        {
            TicketDao ticketdao = new TicketDao();
            DataSet ds = new DataSet();
            ds = ticketdao.getpriority();
            dropPriorty.DataSource = ds;
            dropPriorty.DataTextField = "priority";
            dropPriorty.DataBind();
        }
    }
}