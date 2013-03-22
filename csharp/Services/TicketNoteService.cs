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
    public class TicketNoteService
    {
        public List<TicketNote> getticketnotebyid (long ticketid)

        {
            List<TicketNote> ticketnotelist = new List<TicketNote>();
            SqlConnection conn = null;
            SqlTransaction trans = null;
            
            
            ConnectionDao ConnectionDao = new ConnectionDao();
            try
            {
                

                conn = ConnectionDao.getConnection();
                trans = conn.BeginTransaction();
                ticketnotelist = new TicketNoteDAO().getticketnotebyid(ticketid);

                
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
            return ticketnotelist;
        }
    }
}