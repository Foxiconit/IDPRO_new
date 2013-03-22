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
    public class CustomerServices
    {
        public string  customeradd(customer primaryClient ,customer secondaryClient, Account account)
        {
            string str = "";

            SqlConnection conn = null;
            SqlTransaction trans = null;

            string returnString = IdProConstants.SUCCESS;

            CustomerDAO customerdao = new CustomerDAO();
            AccountDao accountdao = new AccountDao();

            ConnectionDao ConnectionDao = new ConnectionDao();

            Customer_Account_O2M customerAccountO2M = new Customer_Account_O2M();
            Customer_Account_O2MDAO customerAccountO2Mservice = new Customer_Account_O2MDAO();

           


            try
            {
                conn = ConnectionDao.getConnection();

                trans = conn.BeginTransaction();

                customerAccountO2M.CustomerID  = customerdao.addCustomerBasicInfo(conn, trans, primaryClient);

                if (!customerAccountO2M.CustomerID.Equals(0))
                {
                    customerAccountO2M.AccountID = accountdao.addAccountBasicInfo(conn, trans, account);

                    if (!customerAccountO2M.AccountID.Equals(0))
                    {
                       returnString =  customerAccountO2Mservice.addCustomerAccountO2MInfo(conn, trans,customerAccountO2M);                     

                    }
                    str = secondaryClient.CoFirstName ;

                    if (str!=null && !"".Equals(str) && IdProConstants.SUCCESS.Equals(returnString))
                    {
                        customerAccountO2M.CustomerID = customerdao.addCustomerCoinfo(conn, trans, secondaryClient);
                        if (!customerAccountO2M.CustomerID.Equals(0))
                        {
                           returnString = customerAccountO2Mservice.addCustomerAccountO2MInfo(conn, trans, customerAccountO2M);

                         }
                       
                    }
                   
                   
                }
                
               
                if (returnString.Equals(IdProConstants.SUCCESS))
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

            string finalreturnvalue="";
            if (returnString == "Success")
            {

                finalreturnvalue = "Thanks record saved successfully";
            }

            else
            {
                finalreturnvalue = "Sorry, Your request could not be processed. Please try after some time";

            }

            return finalreturnvalue;
        
        }
    }



}