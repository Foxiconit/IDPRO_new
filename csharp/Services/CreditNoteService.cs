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
    public class CreditNoteService
    {
        public List<Credito_Notes> getCreditnotebyid(long creditid)
        {
            List<Credito_Notes> Creditnotelist = new List<Credito_Notes>();
            SqlConnection conn = null;
            SqlTransaction trans = null;
            ConnectionDao ConnectionDao = new ConnectionDao();
            try
            {
                conn = ConnectionDao.getConnection();
                trans = conn.BeginTransaction();
                Creditnotelist = new CreditNotesDao().getcreditnotebyid(creditid);
            }
            catch (Exception exception)
            {
                trans.Rollback();
                System.Diagnostics.Trace.WriteLine("[CreditnoteService:CreditNote] Exception " + exception.StackTrace);
            }
            finally
            {
                ConnectionDao.closeConnection(conn);
            }
            return Creditnotelist;
        }
    }
}