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
    public class TicketAssignmentService
    {

        public List<TicketAssignment> getticketassignmentbyid(long ticketid)
        {
            List<TicketAssignment> ticketassignmentlist = new List<TicketAssignment>();
            SqlConnection conn = null;
            SqlTransaction trans = null;


            ConnectionDao ConnectionDao = new ConnectionDao();
            try
            {


                conn = ConnectionDao.getConnection();
                trans = conn.BeginTransaction();
                ticketassignmentlist = new TicketAssignmentDao().getticketassignmentbyid (ticketid);


            }
            catch (Exception exception)
            {
                trans.Rollback();
                System.Diagnostics.Trace.WriteLine("[TicketnoteService:TicketNote] Exception " + exception.StackTrace);
            }
            finally
            {
                ConnectionDao.closeConnection(conn);
            }
            return ticketassignmentlist;
        }
    }
}