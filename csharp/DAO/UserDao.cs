using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using IDPRO.csharp.Model;
using System.Data.SqlClient;
using IDPRO.csharp.Constants;
using IDPRO.csharp.Services;

namespace IDPRO.csharp.DAO
{
    public class UserDAO
    {
        //String empuser, emppass, emprole;

        //public UserDAO()
        //{
        //    empuser = emppass = emprole = "";
        //}
        //public string empuseradd
        //{
        //    get { return empuser; }
        //    set { empuser = value; }
        //}

        //public string emppassadd
        //{
        //    get { return emppass; }
        //    set { emppass = value; }
        //}
        //public string emproleadd
        //{
        //    get { return emprole; }
        //    set { emprole = value; }
        //}
        public User getUserByUserName(string userName)
        {
            ConnectionDao connectionDao = new ConnectionDao();
            User user = new User();
            Employee emp = new Employee();

            SqlCommand cmd = null;
            SqlConnection conn = null;
            SqlDataReader rs = null;

            string query = "select * from Users where userName='" + userName + "'";

            try
            {
                conn = connectionDao.getConnection();
                cmd = connectionDao.getSqlCommandWithoutTransaction(query, conn);

                //SqlParameter param1 = new SqlParameter();
                //param1.ParameterName = emp.Username;
                //param1.Value = emp.Username;
                //cmd.Parameters.Add(param1);

                rs = cmd.ExecuteReader();

                if (rs.Read())
                {
                    user.Username=(rs["userName"].ToString().Trim());
                    user.Password=(rs["password"].ToString().Trim());
                    user.Role=(rs["role"].ToString().Trim());


                }
                else
                {

                    user = null;
                }

            }
            catch (Exception exception)
            {
                System.Diagnostics.Trace.WriteLine("[UserDAO:getUserByUserName] Exception " + exception.StackTrace);
                user = null;

            }
            finally
            {
                connectionDao.closeConnection(conn);
                connectionDao.closeDabaseEntities(cmd, rs);
            }

            return user;


        }
        
        public string addUser(SqlConnection conn, SqlTransaction trans, User user)
        {
           ConnectionDao connectionDao = new ConnectionDao();
            string returnString = IdProConstants.SUCCESS;
            Employee objEmployee = new Employee();
            SqlCommand cmd = null;
            SqlDataReader rs = null;
            AddEmployee obj = new AddEmployee();
              UserServices userService = new UserServices();
            string query = "INSERT INTO Users([username],[password],[role]) VALUES(@UserName,@Password,@Role)";
            try
            {

                cmd = connectionDao.getSqlCommand(query, conn, trans);

                SqlParameter param1 = new SqlParameter();
                param1.ParameterName = "@UserName";
                //param1.Value = HttpContext.Current.Session["useremp"];
                param1.Value = user.Username;
                cmd.Parameters.Add(param1);

                SqlParameter param2 = new SqlParameter();
                param2.ParameterName = "@Password";
                //param2.Value = userService.getHashPassword(HttpContext.Current.Session["useremp"].ToString ()); 
                param2.Value = userService.getHashPassword(user.Password); 
                cmd.Parameters.Add(param2);



                SqlParameter param3 = new SqlParameter();
                param3.ParameterName = "@Role";
                //param3.Value = HttpContext.Current.Session["rol"];

                param3.Value = user.Role ;
                cmd.Parameters.Add(param3);



                cmd.ExecuteScalar();



            }
            catch (Exception exception)
            {
                System.Diagnostics.Trace.WriteLine("[UserDAO:addUser] Exception " + exception.StackTrace);
                returnString = IdProConstants.FAIL;
            }
            finally
            {
                connectionDao.closeDabaseEntities(cmd, rs);
            }

            return returnString;


        }
     
        public string updateUser(SqlConnection conn, SqlTransaction trans, User user)
        {
            ConnectionDao connectionDao = new ConnectionDao();
            string returnString = IdProConstants.SUCCESS;


            SqlCommand cmd = null;
            SqlDataReader rs = null;

            UserServices userService = new UserServices();
            string query = null;

            bool updatePassword = !userService.getHashPassword("defaultPassWord").Equals(user.Password);

            if (updatePassword)
            {

                query = "update Users set UserName=@UserName,Password=@Password,Role=@Role where UserName='" + HttpContext.Current.Session["prevUserName"] + "'";
            }
            else
            {

                query = "update Users set UserName=@UserName,Role=@Role where UserName='" +  HttpContext.Current.Session["prevUserName"] + "'";
            }
            try
            {

                cmd = connectionDao.getSqlCommand(query, conn, trans);

                SqlParameter param1 = new SqlParameter();
                param1.ParameterName = "@UserName";
                param1.Value = user.Username;
                cmd.Parameters.Add(param1);

                if (updatePassword)
                {
                    SqlParameter param2 = new SqlParameter();
                    param2.ParameterName = "@Password";
                    param2.Value = userService.getHashPassword(user.Password);
                   

                    
                    cmd.Parameters.Add(param2);
                }



                SqlParameter param3 = new SqlParameter();
                param3.ParameterName = "@Role";
                param3.Value = user.Role;
                cmd.Parameters.Add(param3);



                cmd.ExecuteScalar();



            }
            catch (Exception exception)
            {
                System.Diagnostics.Trace.WriteLine("[UserDAO:updateUser] Exception " + exception.StackTrace);
                returnString = IdProConstants.FAIL;
            }
            finally
            {
                connectionDao.closeDabaseEntities(cmd, rs);
            }

            return returnString;


        }





    }
}
