using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using IDPRO.csharp.Model;
using System.Data.SqlClient;
using IDPRO.csharp.Constants;

namespace IDPRO.csharp.DAO
{
    public class Customer_Account_O2MDAO
    {
        public string addCustomerAccountO2MInfo(SqlConnection conn, SqlTransaction trans, Customer_Account_O2M  customerAccount)
        {
            ConnectionDao ConnectionDao = new ConnectionDao();
            string returnString = IdProConstants.SUCCESS;
            SqlCommand cmd = null;
            SqlDataReader rs = null;
            //string query = "INSERT INTO Employees([FIRST_NAME],[LAST_NAME],[EMAIL],[USERNAME],[STATUS],[ADDED_BY],[ADDED_DATE],[LAST_UPDATED_BY],[LAST_UPDATED_DATE]) VALUES(@FIRST_NAME,@LAST_NAME,@EMAIL,@USERNAME,@STATUS,@ADDED_BY,@ADDED_DATE,@LAST_UPDATED_BY,@LAST_UPDATED_DATE)";
            string query = "INSERT INTO Customer_Account_O2M([Account_ID],[Customer_ID]) VALUES(@AccountID,@CustomerID)";
            // string query = "INSERT INTO Employees([FIRST_NAME],[LAST_NAME],[EMAIL],[USERNAME],[STATUS],[Department],[Title],[ADDED_BY],[ADDED_DATE]) VALUES('" + employee.FirstName + "','" + employee.LastName + "','" + employee.Email + "','" + employee.Username + "','A','" + employee.department + "','" + employee.title + "','121',getdate())";
            try
            {
                cmd = ConnectionDao.getSqlCommand(query, conn, trans);

                SqlParameter param1 = new SqlParameter();
                param1.ParameterName = "@AccountID";
                param1.Value = customerAccount.AccountID;
                cmd.Parameters.Add(param1);

                SqlParameter param2 = new SqlParameter();
                param2.ParameterName = "@CustomerID";
                param2.Value = customerAccount.CustomerID;
                cmd.Parameters.Add(param2);



                cmd.ExecuteNonQuery();



            }
            catch (Exception exception)
            {
                System.Diagnostics.Trace.WriteLine("[EmployeeDAO:addEmployee] Exception " + exception.StackTrace);
                returnString = IdProConstants.FAIL;
            }
            finally
            {
                ConnectionDao.closeDabaseEntities(cmd, rs);
            }

            return returnString;


        }


    }
}