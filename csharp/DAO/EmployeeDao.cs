using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using IDPRO.csharp.Model;
using System.Data.SqlClient;
using IDPRO.csharp.Constants;
using System.Data;
namespace IDPRO.csharp.DAO
{
    public class EmployeeDao
    {
        
        Int32 EmployeeIDfill12;
        string setlast;

        public EmployeeDao()
        {
            EmployeeIDfill12 = 0;
            setlast = "";
        }
    
        public int UserIdEmp
        {
            get { return EmployeeIDfill12; }
            set { EmployeeIDfill12 = value; }
        }

        public string lastsearch
        {
            get { return setlast; }
            set { setlast = value; }
        }
          
         
        public Employee getEmployeeByUserName(string userName)
        {
            ConnectionDao ConnectionDao = new ConnectionDao();
            Employee employee = new Employee();

            SqlCommand cmd = null;
            SqlConnection conn = null;
            SqlDataReader rs = null;

            string query = "select * from employees where userName=@userName";

            try
            {
                conn = ConnectionDao.getConnection();
                cmd = ConnectionDao.getSqlCommandWithoutTransaction(query, conn);

                SqlParameter param1 = new SqlParameter();
                param1.ParameterName = "@userName";
                param1.Value = userName;
                cmd.Parameters.Add(param1);

                rs = cmd.ExecuteReader();

                if (rs.Read())
                {
                    employee.FirstName=(rs["first_name"].ToString().Trim());
                    employee.LastName=(rs["last_name"].ToString().Trim());
                    employee.Email=(rs["email"].ToString().Trim());
                    employee.EmployeeStatus=(rs["status"].ToString().Trim());
                    employee.EmployeeId = (rs["Employee_Id"].ToString().Trim());
                    employee.department  = (rs["department"].ToString().Trim());
                    UserDAO userDao = new UserDAO();

                    User user = userDao.getUserByUserName(userName);
                    employee.USER=user;


                }
                else
                {
                    employee = null;
                }

            }
            catch (Exception exception)
            {
                System.Diagnostics.Trace.WriteLine("[EmployeeDAO:getEmployeeByUserName] Exception " + exception.StackTrace);
                employee = null;

            }
            finally
            {
                ConnectionDao.closeConnection(conn);
                ConnectionDao.closeDabaseEntities(cmd, rs);
            }

            return employee;


        }
        public DataTable getemployeedetailfill()
        {
           
            Employee empid = new Employee();
            ConnectionDao ConnectionDao = new ConnectionDao();
            SqlDataAdapter adp = new SqlDataAdapter("select a.* ,b.* from  Employees a, Users b where a.UserName=b.UserName and Employee_Id='" + EmployeeIDfill12 + "'", ConnectionDao.getConnection());
            DataTable ds1 = new DataTable();
            adp.Fill(ds1);
            return ds1;
        }   
         public DataTable getemployeedetail() 
        {
            ConnectionDao ConnectionDao = new ConnectionDao();
            SqlDataAdapter adp = new SqlDataAdapter("select * from Employees", ConnectionDao.getConnection());
            DataTable   ds1 = new DataTable();
            adp.Fill(ds1);
            return ds1;
      }

        public Employee getEmployeeByEmail(string email)
        {
            ConnectionDao ConnectionDao = new ConnectionDao();
            Employee employee = new Employee();

            SqlCommand cmd = null;
            SqlConnection conn = null;
            SqlDataReader rs = null;

            string query = "select * from employees where email='" + email + "'";

            try
            {
                conn = ConnectionDao.getConnection();
                cmd = ConnectionDao.getSqlCommandWithoutTransaction(query, conn);

                SqlParameter param1 = new SqlParameter();
                param1.ParameterName = "@email";
                param1.Value = email;
                cmd.Parameters.Add(param1);

                rs = cmd.ExecuteReader();

                if (rs.Read())
                {
                    employee.FirstName=(rs["first_name"].ToString().Trim());
                    employee.LastName=(rs["last_name"].ToString().Trim());
                    employee.Email=(rs["email"].ToString().Trim());
                    employee.EmployeeStatus=(rs["status"].ToString().Trim());
                    employee.EmployeeId = (rs["Employee_Id"].ToString().Trim());
                    string userName = rs["userName"].ToString().Trim();
                    UserDAO userDao = new UserDAO();
                    User user = userDao.getUserByUserName(userName);
                    employee.USER=user;


                }
                else
                {
                    employee = null;
                }

            }
            catch (Exception exception)
            {
                System.Diagnostics.Trace.WriteLine("[EmployeeDAO:getEmployeeByUserName] Exception " + exception.StackTrace);
                employee = null;

            }
            finally
            {
                ConnectionDao.closeConnection(conn);
                ConnectionDao.closeDabaseEntities(cmd, rs);
            }

            return employee;
        }
        public Employee getEmployeeById(string id)
        {
            ConnectionDao ConnectionDao = new ConnectionDao();
            Employee employee = new Employee();
            SqlCommand cmd = null;
            SqlConnection conn = null;
            SqlDataReader rs = null;
            string query = "select * from employees where Employee_Id=@id";
            try
            {
                conn = ConnectionDao.getConnection();
                cmd = ConnectionDao.getSqlCommandWithoutTransaction(query, conn);
                SqlParameter param1 = new SqlParameter();
                param1.ParameterName = "@id";
                param1.Value = id ;
                cmd.Parameters.Add(param1);
                rs = cmd.ExecuteReader();
                if (rs.Read())
                {
                    employee.FirstName=(rs["first_name"].ToString().Trim());
                    employee.LastName=(rs["last_name"].ToString().Trim());
                    employee.Email=(rs["email"].ToString().Trim());
                    employee.EmployeeStatus=(rs["status"].ToString().Trim());
                    employee.EmployeeId = (rs["Employee_Id"].ToString().Trim());

                    string userName = rs["userName"].ToString().Trim();
                    UserDAO userDao = new UserDAO();
                    User user = userDao.getUserByUserName(userName);
                    employee.USER=user;
                }
                else
                {
                    employee = null;
                }
            }
            catch (Exception exception)
            {
                System.Diagnostics.Trace.WriteLine("[EmployeeDAO:getEmployeeById] Exception " + exception.StackTrace);
                employee = null;
            }
            finally
            {
                ConnectionDao.closeConnection(conn);
                ConnectionDao.closeDabaseEntities(cmd, rs);
            }
            return employee;
        }
        public DataSet getemployeedetailsearch(string lastname)
        {
            ConnectionDao ConnectionDao = new ConnectionDao();
            string str ="select a.*,b.department_name,b.description from employees a, Department b  where a.Department=b.Department_Name and  last_name like '%" + lastname + "%'";
            SqlDataAdapter adp = new SqlDataAdapter(str, ConnectionDao.getConnection());
            DataSet ds1 = new DataSet();
            adp.Fill(ds1);
            return ds1;
        }
        public List<Employee> getEmployeeByLastName(string lastName)
        {
            ConnectionDao ConnectionDao = new ConnectionDao();
            List<Employee> employeeList = new List<Employee>();
            SqlCommand cmd = null;
            SqlConnection conn = null;
            SqlDataReader rs = null;
            lastName = lastName + "%";
            string query = "select * from employees where last_name like @lastName";

            try
            {
                conn = ConnectionDao.getConnection();
                cmd = ConnectionDao.getSqlCommandWithoutTransaction(query, conn);

                SqlParameter param1 = new SqlParameter();
                param1.ParameterName = "@lastName";
                param1.Value = lastName;
                cmd.Parameters.Add(param1);

                rs = cmd.ExecuteReader();

                while (rs.Read())
                {
                    Employee employee = new Employee();

                    employee.FirstName=(rs["first_name"].ToString().Trim());
                    employee.LastName=(rs["last_name"].ToString().Trim());
                    employee.Email=(rs["email"].ToString().Trim());
                    employee.EmployeeStatus=(rs["status"].ToString().Trim());
                    employee.EmployeeId = (rs["Employee_Id"].ToString().Trim());

                    string userName = rs["userName"].ToString().Trim();

                    UserDAO userDao = new UserDAO();

                    User user = userDao.getUserByUserName(userName);
                    employee.USER=user;

                    employeeList.Add(employee);
                }
            }
            catch (Exception exception)
            {
                System.Diagnostics.Trace.WriteLine("[EmployeeDAO:getEmployeeByLastName] Exception " + exception.StackTrace);


            }
            finally
            {
                ConnectionDao.closeConnection(conn);
                ConnectionDao.closeDabaseEntities(cmd, rs);
            }

            return employeeList;
       }
        public DataSet getfillstatus() 
        {
        
            Employee objempstatus = new Employee();
            ConnectionDao ConnectionDao = new ConnectionDao();
      
            SqlDataAdapter adp = new SqlDataAdapter("select * from Employee_Statuses", ConnectionDao.getConnection());
            DataSet   ds1 = new DataSet();
            adp.Fill(ds1);
            return ds1;
       

        }
        

        public DataSet getfillroles()
        {

            Employee objempstatus = new Employee();
            ConnectionDao ConnectionDao = new ConnectionDao();

            SqlDataAdapter adp = new SqlDataAdapter("select * from Roles", ConnectionDao.getConnection());
            DataSet ds1 = new DataSet();
            adp.Fill(ds1);

            return ds1;




        }
        public DataSet getfilldepartment()
        {

            Employee objempstatus = new Employee();
            ConnectionDao ConnectionDao = new ConnectionDao();

            SqlDataAdapter adp = new SqlDataAdapter("select * from Department", ConnectionDao.getConnection());
            DataSet ds1 = new DataSet();
            adp.Fill(ds1);

            return ds1;




        }
        public string addEmployee(SqlConnection conn, SqlTransaction trans, Employee employee)
        {
            ConnectionDao ConnectionDao = new ConnectionDao();
            string returnString = IdProConstants.SUCCESS;
            SqlCommand cmd = null;
            SqlDataReader rs = null;
       //string query = "INSERT INTO Employees([FIRST_NAME],[LAST_NAME],[EMAIL],[USERNAME],[STATUS],[ADDED_BY],[ADDED_DATE],[LAST_UPDATED_BY],[LAST_UPDATED_DATE]) VALUES(@FIRST_NAME,@LAST_NAME,@EMAIL,@USERNAME,@STATUS,@ADDED_BY,@ADDED_DATE,@LAST_UPDATED_BY,@LAST_UPDATED_DATE)";
            string query = "INSERT INTO Employees([FIRST_NAME],[LAST_NAME],[EMAIL],[USERNAME],[STATUS],[Title],[ADDED_BY],[ADDED_DATE],[DEPARTMENT]) VALUES(@FIRST_NAME,@LAST_NAME,@EMAIL,@USERNAME,@STATUS,@Title,@ADDED_BY,@ADDED_DATE,@Department)";
          // string query = "INSERT INTO Employees([FIRST_NAME],[LAST_NAME],[EMAIL],[USERNAME],[STATUS],[Department],[Title],[ADDED_BY],[ADDED_DATE]) VALUES('" + employee.FirstName + "','" + employee.LastName + "','" + employee.Email + "','" + employee.Username + "','A','" + employee.department + "','" + employee.title + "','121',getdate())";
            try
            {
                cmd = ConnectionDao.getSqlCommand(query, conn, trans);

                SqlParameter param1 = new SqlParameter();
                param1.ParameterName = "@FIRST_NAME";
                param1.Value = employee.FirstName;
                cmd.Parameters.Add(param1);

                SqlParameter param2 = new SqlParameter();
                param2.ParameterName = "@LAST_NAME";
                param2.Value = employee.LastName;
                cmd.Parameters.Add(param2);



                SqlParameter param3 = new SqlParameter();
                param3.ParameterName = "@EMAIL";
                param3.Value = employee.Email;
                cmd.Parameters.Add(param3);

                SqlParameter param4 = new SqlParameter();
                param4.ParameterName = "@USERNAME";
                //   param4.Value = employee.getUser().getUserName();
                param4.Value = employee.Username;
                cmd.Parameters.Add(param4);

                SqlParameter param5 = new SqlParameter();
                param5.ParameterName = "@STATUS";
                param5.Value = employee.status;
                cmd.Parameters.Add(param5);

                SqlParameter param6 = new SqlParameter();
                param6.ParameterName = "@Department";
                param6.Value = employee.department;
                cmd.Parameters.Add(param6);


                SqlParameter param7 = new SqlParameter();
                param7.ParameterName = "@Title";
                param7.Value = employee.title;
                cmd.Parameters.Add(param7);

                SqlParameter param10 = new SqlParameter();
                param10.ParameterName = "@ADDED_BY";
                param10.Value = HttpContext.Current.Session["username"];
                cmd.Parameters.Add(param10);


                SqlParameter param11 = new SqlParameter();
                param11.ParameterName = "@ADDED_DATE";
                param11.Value = System.DateTime.Now;
                cmd.Parameters.Add(param11);

                //SqlParameter param8 = new SqlParameter();
                //param8.ParameterName = "@LAST_UPDATED_BY";
                //param8.Value = employee.LastUpdatedBy;
                //cmd.Parameters.Add(param8);



                //SqlParameter param9 = new SqlParameter();
                //param9.ParameterName = "@LAST_UPDATED_DATE";
                //param9.Value = employee.LastUpdatedDate;
                //cmd.Parameters.Add(param9);



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

        public string updateEmployee(SqlConnection conn, SqlTransaction trans, Employee employee)
        {
            ConnectionDao ConnectionDao = new ConnectionDao();
            string returnString = IdProConstants.SUCCESS;


            SqlCommand cmd = null;
            SqlDataReader rs = null;

            string query = "Update Employees set FIRST_NAME=@FIRST_NAME,LAST_NAME=@LAST_NAME,EMAIL=@EMAIL,USERNAME=@USERNAME,STATUS=@STATUS,LAST_UPDATED_BY=@id,LAST_UPDATED_DATE=@LAST_UPDATED_BY WHERE Employee_Id=@id";

            try
            {

                cmd = ConnectionDao.getSqlCommand(query, conn, trans);

                SqlParameter param1 = new SqlParameter();
                param1.ParameterName = "@FIRST_NAME";
                param1.Value = employee.FirstName;
                cmd.Parameters.Add(param1);

                SqlParameter param2 = new SqlParameter();
                param2.ParameterName = "@LAST_NAME";
                param2.Value = employee.LastName;
                cmd.Parameters.Add(param2);



                SqlParameter param3 = new SqlParameter();
                param3.ParameterName = "@EMAIL";
                param3.Value = employee.Email;
                cmd.Parameters.Add(param3);

                SqlParameter param4 = new SqlParameter();
                param4.ParameterName = "@USERNAME";
                param4.Value = employee.USER.Username;
                cmd.Parameters.Add(param4);

                SqlParameter param5 = new SqlParameter();
                param5.ParameterName = "@STATUS";
                param5.Value = employee.status;
                cmd.Parameters.Add(param5);



                SqlParameter param6 = new SqlParameter();
                param6.ParameterName = "@id";
                param6.Value = employee.EmployeeId;
                cmd.Parameters.Add(param6);


                SqlParameter param8 = new SqlParameter();
                param8.ParameterName = "@LAST_UPDATED_BY";
                param8.Value = employee.EmployeeId;
                cmd.Parameters.Add(param8);



                SqlParameter param9 = new SqlParameter();
                param9.ParameterName = "@LAST_UPDATED_DATE";
                param9.Value = DateTime.Now;
                cmd.Parameters.Add(param9);



                cmd.ExecuteNonQuery();



            }
            catch (Exception exception)
            {
                System.Diagnostics.Trace.WriteLine("[EmployeeDAO:updateEmployee] Exception " + exception.StackTrace);
                returnString = IdProConstants.FAIL;
            }
            finally
            {
                ConnectionDao.closeDabaseEntities(cmd, rs);
            }

            return returnString;


        }


        public Employee getempdepartment(string department)
        {
            ConnectionDao connectionDao = new ConnectionDao();
            Employee employee = new Employee();
            SqlCommand cmd = null;
            SqlConnection conn = null;
            SqlDataReader rs = null;

            string query = "select * from Employees where UserName='" + department + "'";

            try
            {
                conn = connectionDao.getConnection();
                cmd = connectionDao.getSqlCommandWithoutTransaction(query, conn);

                rs = cmd.ExecuteReader();

                if (rs.Read())
                {
                    employee.department = (rs["Department"].ToString().Trim());

                }
                else
                {

                    employee = null;
                }

            }
            catch (Exception exception)
            {
                System.Diagnostics.Trace.WriteLine("[EmployeeDao:getempdepartment] Exception " + exception.StackTrace);
                employee = null;

            }
            finally
            {
                connectionDao.closeConnection(conn);
                connectionDao.closeDabaseEntities(cmd, rs);
            }

            return employee;


        }



    }
}