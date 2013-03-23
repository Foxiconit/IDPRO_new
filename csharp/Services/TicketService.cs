using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using IDPRO.csharp.Model;
using System.Data.SqlClient;
using IDPRO.csharp.Constants;
using IDPRO.csharp.DAO;

namespace IDPRO.csharp.Services
{
    public class TicketService
    {
        public string TicketAdd(Ticket ticket)
        {

            SqlConnection conn = null;
            SqlTransaction trans = null;

            string returnString = IdProConstants.SUCCESS;


            TicketDao ticketdao = new TicketDao();

            TicketNoteDAO ticketnotedao = new TicketNoteDAO();

            TicketAssignmentDao ticketasignmentdao = new TicketAssignmentDao();

            ConnectionDao ConnectionDao = new ConnectionDao();

            try
            {
                conn = ConnectionDao.getConnection();
                trans = conn.BeginTransaction();
                //ticket.tickettypeid = ticketdao.addticketsTypedetail(conn, trans, ticket);
                //if (!ticket.tickettypeid.Equals(0))
                //{
                ticket.TicketID = ticketdao.addticketsdetail(conn, trans, ticket);
                if (!ticket.TicketID.Equals(0))
                {
                    foreach (TicketNote ticketnote in ticket.ticketNotes)
                    {
                        ticketnote.TicketID = ticket.TicketID;
                        ticketnote.NoteID = ticketnotedao.addticketsNotedetail(conn, trans, ticketnote);
                        if (!ticketnote.NoteID.Equals(0))
                        {
                            foreach (TicketAssignment ticketAssignment in ticket.ticketAssignment)
                            {
                                ticketAssignment.TicketID = ticket.TicketID;
                                returnString = ticketasignmentdao.addticketsAssignment(conn, trans, ticketAssignment);
                                if (returnString.Equals(IdProConstants.SUCCESS))
                                {
                                    trans.Commit();
                                }
                                else
                                {
                                    trans.Rollback();
                                }
                            }
                        }
                        else
                        {

                            trans.Rollback();
                        }
                    }
                }
                else
                {

                    trans.Rollback();
                }
               
            }
            
            catch (Exception exception)
            {
                trans.Rollback();
                System.Diagnostics.Trace.WriteLine("[TicketService:AddTicket] Exception " + exception.StackTrace);

            }
            finally
            {
                ConnectionDao.closeConnection(conn);
            }

            return returnString;



        }

        public Ticket getticketbyticketid(long ticketid)
        {
            Ticket ticket = new Ticket();
            ticket = new TicketDao().getticketbyticketid(ticketid);
            //ticket.ticketNotes = new List<TicketNote>();  no need
            ticket.ticketNotes = new TicketNoteService().getticketnotebyid(ticketid);
           // ticket.ticketAssignment  = new List<TicketAssignment>(); no need
            ticket.ticketAssignment = new TicketAssignmentService().getticketassignmentbyid(ticketid);
            return ticket;

        }



    }
}