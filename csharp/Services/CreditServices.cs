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

namespace IDPRO.csharp.Services
{
    public class CreditServices
    {

        public string addCredit(Credit credit)
        {

            //all open transaction and calling DAO code yes
            SqlConnection conn = null;
            SqlTransaction trans = null;
            string returnString = IdProConstants.SUCCESS;
            CreditDAO creditDao = new CreditDAO();
            ConnectionDao ConnectionDao = new ConnectionDao();
            try
            {
                conn = ConnectionDao.getConnection();
                trans = conn.BeginTransaction();
                returnString = creditDao.addCredit(conn, trans, credit);
                if (IdProConstants.SUCCESS.Equals(returnString))
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
                System.Diagnostics.Trace.WriteLine("[CreditService:AddCredit] Exception " + exception.StackTrace);
            }
            finally
            {
                ConnectionDao.closeConnection(conn);
            }
            return returnString;
        }

        public string updateCredit(Credit credit)
        {
            //call dao method
            SqlConnection conn = null;
            SqlTransaction trans = null;
            string returnString = IdProConstants.SUCCESS;
            CreditDAO creditDao = new CreditDAO();
            ConnectionDao ConnectionDao = new ConnectionDao();
                     
                try
                {
                    conn = ConnectionDao.getConnection();
                    trans = conn.BeginTransaction();
                        returnString = creditDao.updateCredit(conn, trans, credit);
                    
                    if (IdProConstants.SUCCESS.Equals(returnString))
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
                    System.Diagnostics.Trace.WriteLine("[CreditService:UpdateCredit] Exception " + exception.StackTrace);

                }
                finally
                {
                    ConnectionDao.closeConnection(conn);
                }          
            return returnString;            
        }
        public Credit getCreditById(long creditId)
        {


            //call dao method
            return null;

        }


        public List<Credit> getCreditsByAccountID(long accountID)
        {

            //call dao method
            return null;

        }


    }
}