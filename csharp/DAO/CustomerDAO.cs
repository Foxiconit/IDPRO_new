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
    public class CustomerDAO
    {
       
        public long addCustomerCoinfo(SqlConnection conn, SqlTransaction trans, customer customer)
        {
           
             ConnectionDao connectionDao = new ConnectionDao();
          //   string returnString = IdProConstants.SUCCESS;
             SqlCommand cmd = null;
             SqlDataReader rs = null;
             long Customer_ID = 0;
             string query = "INSERT INTO Customer([First_name],[Last_name],[DOB],[SSN],[Customer_Type]) VALUES (@First_name,@Last_name,@DOB,@SSN,@Customer_Type);SELECT Customer_ID=scope_identity();";
             try
             {

                 cmd = connectionDao.getSqlCommand(query, conn, trans);
               
                 SqlParameter param1 = new SqlParameter();
                 param1.ParameterName = "@First_name";
                 param1.Value = customer.CoFirstName;
                 cmd.Parameters.Add(param1);


                 SqlParameter param2 = new SqlParameter();
                 param2.ParameterName = "@Last_name";
                 param2.Value = customer.CoLastName;
                 cmd.Parameters.Add(param2);

                 SqlParameter param3 = new SqlParameter();
                 param3.ParameterName = "@DOB";
                 param3.Value = customer.Codob;
                 cmd.Parameters.Add(param3);

                 SqlParameter param4 = new SqlParameter();
                 param4.ParameterName = "@SSN";
                 param4.Value = customer.Cossn;
                 cmd.Parameters.Add(param4);
               
                 SqlParameter param16 = new SqlParameter();
                 param16.ParameterName = "@Customer_Type";
                 param16.Value = "Secondary";
                 cmd.Parameters.Add(param16);

                 rs = cmd.ExecuteReader();
                 if (rs.Read())
                 {
                     Customer_ID = Int32.Parse(rs["Customer_ID"].ToString());
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

           //  return returnString;

            return Customer_ID;
        }
    
    
        public long addCustomerBasicInfo(SqlConnection conn, SqlTransaction trans, customer customer)
        {
             string strdrop = "";
             ConnectionDao connectionDao = new ConnectionDao();
     //        string returnString = IdProConstants.SUCCESS;
             SqlCommand cmd = null;
             SqlDataReader rs = null;
             long Customer_ID = 0;
             string query = "INSERT INTO Customer([First_name],[Last_name],[DOB],[SSN],[Address],[City],[State],[zip],[Primary_email],[Secondary_Email],[phone1],[phone2],[Customer_Type]) VALUES (@First_name,@Last_name,@DOB,@SSN,@Address,@City,@State,@zip,@Primary_email,@Secondary_Email,@phone1,@phone2,@Customer_Type);SELECT Customer_ID=scope_identity();";
             try
             {
                strdrop = customer.dropphone1;
                cmd = connectionDao.getSqlCommand(query, conn, trans);


                SqlParameter param1 = new SqlParameter();
                param1.ParameterName = "@First_name";
                param1.Value = customer.FirstName;
                cmd.Parameters.Add(param1);

                SqlParameter param2 = new SqlParameter();
                param2.ParameterName = "@Last_name";
                param2.Value = customer.LastName;
                cmd.Parameters.Add(param2);


                SqlParameter param3 = new SqlParameter();
                param3.ParameterName = "@SSN";
                param3.Value = customer.ssn;
                cmd.Parameters.Add(param3);

                SqlParameter param4 = new SqlParameter();
                param4.ParameterName = "@Address";
                param4.Value = customer.Address1;
                cmd.Parameters.Add(param4);

                SqlParameter param5 = new SqlParameter();
                param5.ParameterName = "@City";
                param5.Value = customer.City;
                cmd.Parameters.Add(param5);


                SqlParameter param6 = new SqlParameter();
                param6.ParameterName = "@State";
                param6.Value = customer.States;
                cmd.Parameters.Add(param6);


                SqlParameter param7 = new SqlParameter();
                param7.ParameterName = "@zip";
                param7.Value = customer.Zip;
                cmd.Parameters.Add(param7);

                SqlParameter param9 = new SqlParameter();
                param9.ParameterName = "@Primary_email";
                param9.Value = customer.PrimaryEmail;
                cmd.Parameters.Add(param9);

                SqlParameter param10 = new SqlParameter();
                param10.ParameterName = "@Secondary_Email";
                param10.Value = customer.SecondaryEmail;
                cmd.Parameters.Add(param10);
                           

               
                    SqlParameter param11 = new SqlParameter();
                    param11.ParameterName = "@phone1";
                    param11.Value = customer.Phone1;
                    cmd.Parameters.Add(param11);

                    SqlParameter param12 = new SqlParameter();
                    param12.ParameterName = "@phone2";
                    param12.Value = customer.Phone2;
                    cmd.Parameters.Add(param12);

               


                SqlParameter param16 = new SqlParameter();
                param16.ParameterName = "@Customer_Type";
                param16.Value = "primary";
                cmd.Parameters.Add(param16);

                SqlParameter param17 = new SqlParameter();
                param17.ParameterName = "@DOB";
                param17.Value = customer.dob;
                cmd.Parameters.Add(param17);



                rs = cmd.ExecuteReader();
                if (rs.Read())
                {
                    Customer_ID = Int32.Parse(rs["Customer_ID"].ToString());
                }
                //while (rs.Read())
                //{
                //    customerNumber = Int32.Parse(rs["Customer_ID"].ToString());
                //}

            }
            catch (Exception exception)
            {
                System.Diagnostics.Trace.WriteLine("[CustomerDAO:addCustomerBasicInfo] Exception " + exception.StackTrace);

            }
            finally
            {
                connectionDao.closeDabaseEntities(cmd, rs);
            }

             return Customer_ID;
            
        }


        public int getNumberOfCustomerBySSN(string ssn)
        {
           ConnectionDao connectionDao = new ConnectionDao();
            Account account = new Account();

            SqlCommand cmd = null;
            SqlConnection conn = null;
            SqlDataReader rs = null;

            int count = 0;

            string query = "select count(*) as count from customer where ssn=@ssn";

            try
            {
                conn = connectionDao.getConnection();
                cmd = connectionDao.getSqlCommandWithoutTransaction(query, conn);

                SqlParameter param1 = new SqlParameter();
                param1.ParameterName = "@ssn";
                param1.Value = ssn;
                cmd.Parameters.Add(param1);

                rs = cmd.ExecuteReader();

                if (rs.Read())
                {
                    count = Int32.Parse(rs["count"].ToString());
                }

            }
            catch (Exception exception)
            {
                System.Diagnostics.Trace.WriteLine("[CustomerDAO:getNumberOfCustomerBySSN] Exception " + exception.StackTrace);


            }
            finally
            {
                connectionDao.closeConnection(conn);
                connectionDao.closeDabaseEntities(cmd, rs);
            }

            return count;



        }


        public DataSet getcustomersarch(string phoneno)
        {
            ConnectionDao ConnectionDao = new ConnectionDao();
            string str = "select customerid from customer where phone1 = '" + phoneno + "' or phone2 = '" + phoneno + "' ";
            SqlDataAdapter adp = new SqlDataAdapter(str, ConnectionDao.getConnection());
            DataSet ds1 = new DataSet();
            adp.Fill(ds1);
            return ds1;
        }


        public DataSet getstates()
        {
            ConnectionDao ConnectionDao = new ConnectionDao();
            SqlDataAdapter adp = new SqlDataAdapter("select * from statemaster", ConnectionDao.getConnection());
            DataSet ds1 = new DataSet();
            adp.Fill(ds1);
            return ds1;
        }
    }
}