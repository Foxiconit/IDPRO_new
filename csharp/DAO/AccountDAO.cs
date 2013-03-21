using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using IDPRO.csharp.Model;
using IDPRO.csharp.Constants;
using System.Data;

namespace IDPRO.csharp.DAO
{
    public class AccountDao
    {
        public long addAccountBasicInfo(SqlConnection conn, SqlTransaction trans, Account account)
        {
           
            ConnectionDao connectionDao = new ConnectionDao();          
            SqlCommand cmd = null;
            SqlDataReader rs = null;
            int AccountID = 0;
            string query = "INSERT INTO account([Status],[Added_By],[Added_Date]) VALUES (@Status,@Added_By,@Added_Date);SELECT Account_ID=scope_identity();";
            try
            {
             
                cmd = connectionDao.getSqlCommand(query, conn, trans);


                SqlParameter param1 = new SqlParameter();
                param1.ParameterName = "@Status";
                param1.Value = "Active";
                cmd.Parameters.Add(param1);

                SqlParameter param2 = new SqlParameter();
                param2.ParameterName = "@Added_By";
                param2.Value = HttpContext .Current.Session["username"];
                cmd.Parameters.Add(param2);

                SqlParameter param3 = new SqlParameter();
                param3.ParameterName = "@Added_Date";
                param3.Value = System.DateTime.Now;
                cmd.Parameters.Add(param3);



                rs = cmd.ExecuteReader();
                if (rs.Read())
                {
                    AccountID = Int32.Parse(rs["Account_ID"].ToString());
                }

            }
            catch (Exception exception)
            {
                System.Diagnostics.Trace.WriteLine("[CustomerDAO:addCustomerBasicInfo] Exception " + exception.StackTrace);

            }
            finally
            {
                connectionDao.closeDabaseEntities(cmd, rs);
            }

            return AccountID;
        }
    }
}