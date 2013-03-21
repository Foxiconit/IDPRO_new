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
        public string TicketAdd(Ticket ticket, TicketAssignment ticketassignment, TicketNode ticketnode)
        {
           
            SqlConnection conn = null;
            SqlTransaction trans = null;

            string returnString = IdProConstants.SUCCESS;

           
            TicketDao ticketdao = new TicketDao();
       
            ConnectionDao ConnectionDao = new ConnectionDao();
            
            try
            {
                conn = ConnectionDao.getConnection();
                trans = conn.BeginTransaction();
                //ticket.tickettypeid = ticketdao.addticketsTypedetail(conn, trans, ticket);
                //if (!ticket.tickettypeid.Equals(0))
                //{
                  ticket.TicketID  = ticketdao.addticketsdetail(conn, trans, ticket);
                  if (!ticket.TicketID.Equals(0))
                    {
                        ticketnode.TicketID = ticket.TicketID;
                        ticketnode.NoteDate = ticket.AssignDate;
                      ticketnode.NoteID = ticketdao.addticketsNotedetail(conn, trans, ticketnode);

                      if (!ticketnode.NoteID.Equals(0))
                        {
                            ticketassignment.TicketID = ticket.TicketID;
                            ticketassignment.AssignTo = ticket.AssignTo;
                            ticketassignment.AssignDate = ticket.AssignDate;
                            returnString = ticketdao.addticketsAssignment(conn, trans, ticketassignment);
                        }
                        else
                        {
                            trans.Commit();
                        }
                    }
                    else
                    {
                        trans.Rollback();
                    }

                    trans.Commit();
                }
                //else
                //{
                //    trans.Rollback();
                //}
 

            //}
              
            
            catch (Exception exception)
            {
                trans.Rollback();
                System.Diagnostics.Trace.WriteLine("[EmployeeServices:addEmployee] Exception " + exception.StackTrace);

            }
            finally
            {
                ConnectionDao.closeConnection(conn);


            }

            return returnString;
            
          

        }

    }
}