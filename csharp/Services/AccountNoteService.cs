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
    public class AccountNoteService
    {
        public List<AccountNotes> getaccountnotebyid(long accountid)
        {
            List<AccountNotes> accountnotelist = new List<AccountNotes>();
            SqlConnection conn = null;
            SqlTransaction trans = null;
            ConnectionDao ConnectionDao = new ConnectionDao();
            try
            {
                conn = ConnectionDao.getConnection();
                trans = conn.BeginTransaction();
                accountnotelist = new AccountNoteDao().getaccountnotebyid(accountid);
            }
            catch (Exception exception)
            {
                trans.Rollback();
                System.Diagnostics.Trace.WriteLine("[AccountNoteService:AccountNote] Exception " + exception.StackTrace);
            }
            finally
            {
                ConnectionDao.closeConnection(conn);
            }
            return accountnotelist;
        }

    }
}