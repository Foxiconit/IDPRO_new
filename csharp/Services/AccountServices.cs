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
    public class AccountServices
    {
        public long addaccount(Account account)
        {
            SqlConnection conn = null;
            SqlTransaction trans = null;          
            AccountDao accountDao = new AccountDao();
            long AccountID = 0;
            ConnectionDao ConnectionDao = new ConnectionDao();
            try
            {
                conn = ConnectionDao.getConnection();
                trans = conn.BeginTransaction();
                AccountID = accountDao.addAccountBasicInfo(conn, trans, account);
                if (!AccountID.Equals(0))
                {
                    trans.Commit();
                }
                else
                {
                    trans.Rollback();
                }
            }
            catch (Exception exception)
            {
                trans.Rollback();
                System.Diagnostics.Trace.WriteLine("[EmployeeServices:addEmployee] Exception " + exception.StackTrace);
            }
            finally
            {
                ConnectionDao.closeConnection(conn);
            }
            return AccountID;
        }
    }
}