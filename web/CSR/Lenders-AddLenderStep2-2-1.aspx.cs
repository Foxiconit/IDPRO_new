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
            string loginsession = Convert.ToString(Session["username"]);

            if (loginsession == null)
            {

                Response.Redirect("../../employeelogin.aspx?login=failed");

            }

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
            Session["accountid"] = "1006";
            TicketAssignment ticketassignment = new TicketAssignment();
            Ticket ticket = new Ticket();
            TicketNote ticketnote = new TicketNote();
            ticket.TicketTypeString = drptickettype.SelectedItem.Text.Trim();
            ticket.Priority = dropPriorty.Text.Trim();
            ticket.AssignTo = DropAssignedTo.Text.Trim();
            ticket.AccountID =Convert.ToInt32 (Session["accountid"]);
            ticket.AssignDate = System.DateTime.Now;
            ticket.openby = Session["username"].ToString ();
            ticket.ticketAssignment = new List<TicketAssignment>();
            ticket.ticketNotes  = new List<TicketNote>();
            
            ticketassignment.AssignDate = System.DateTime.Now;
            ticketassignment.AssignBy = HttpContext.Current.Session["username"].ToString();
            ticketassignment.AssignTo = DropAssignedTo.Text.Trim();
            ticket.ticketAssignment.Add(ticketassignment);

            ticketnote.Note = txtdescription.Text.Trim();
            ticketnote.NoteDate = System.DateTime.Now;
            ticketnote.addedby = Session["username"].ToString();
            ticket.ticketNotes.Add(ticketnote);
            string msg;
            msg = ticketservice.TicketAdd(ticket);
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