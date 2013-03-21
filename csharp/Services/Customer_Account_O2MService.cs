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
    public class Customer_Account_O2MService
    {
         public string addCustomerAccountInfo(Customer_Account_O2M customerAccount)
        {
            SqlConnection conn = null;
            SqlTransaction trans = null;  
             string returnString = IdProConstants.FAIL;
            Customer_Account_O2MDAO customerAccounto2mDao = new Customer_Account_O2MDAO();
            long AccountID = 0;
            ConnectionDao ConnectionDao = new ConnectionDao();
            try
            {
                conn = ConnectionDao.getConnection();
                trans = conn.BeginTransaction();
                returnString  = customerAccounto2mDao.addCustomerAccountO2MInfo(conn, trans, customerAccount);
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
            return returnString ;
        }
    }
}
