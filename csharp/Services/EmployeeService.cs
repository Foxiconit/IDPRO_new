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
    public class EmployeeServices
    {

        public string addEmployee(Employee employee)
        {

            SqlConnection conn = null;
            SqlTransaction trans = null;

            string returnString = IdProConstants.SUCCESS;


            UserDAO userDao = new UserDAO();
            EmployeeDao EmployeeDao = new EmployeeDao();
            ConnectionDao ConnectionDao = new ConnectionDao();
            UserServices userServices = new UserServices();


            if (isEmployeeEmailexist(employee.Email.Trim()))
            {
                returnString = "Employee Email already Exist in the system";
            }
            // else if (userServices.isUserNameExist(employee.USER.Username))
            else if (userServices.isUserNameExist(employee.Username))
            {
                returnString = "UserName already Exit in the system";
            }
            else
            {

                try
                {
                    conn = ConnectionDao.getConnection();

                    trans = conn.BeginTransaction();


                    returnString = userDao.addUser(conn, trans, employee.USER);

                    if (IdProConstants.SUCCESS.Equals(returnString))
                    {
                        returnString = EmployeeDao.addEmployee(conn, trans, employee);

                    }

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
                    System.Diagnostics.Trace.WriteLine("[EmployeeServices:addEmployee] Exception " + exception.StackTrace);

                }
                finally
                {
                    ConnectionDao.closeConnection(conn);


                }
            }


            return returnString;


        }

        public string updateEmployee(Employee employee)
        {
            SqlConnection conn = null;
            SqlTransaction trans = null;
            string returnString = IdProConstants.SUCCESS;
            UserDAO userDao = new UserDAO();
            EmployeeDao EmployeeDao = new EmployeeDao();
            ConnectionDao ConnectionDao = new ConnectionDao();
            UserServices userServices = new UserServices();
            Employee employeeById = EmployeeDao.getEmployeeById(employee.EmployeeId);
            if (!(employeeById.Email.Trim().Equals(employee.Email.Trim())) && isEmployeeEmailexist(employee.Email.Trim()))
            {
                returnString = "Employee Email already Exist in the system";
            }
            else if (!(employeeById.USER.Username.Trim().ToUpper().Equals(employee.USER.Username.Trim().ToUpper())) && userServices.isUserNameExist(employee.USER.Username))
            {
                returnString = "UserName already Exit in the system";
            }
            else
            {
                try
                {
                    conn = ConnectionDao.getConnection();
                    trans = conn.BeginTransaction();
                    HttpContext.Current.Session["prevUserName"] = employeeById.USER.Username;
                    returnString = userDao.updateUser(conn, trans, employee.USER);
                    if (IdProConstants.SUCCESS.Equals(returnString))
                    {
                        returnString = EmployeeDao.updateEmployee(conn, trans, employee);
                    }
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
                    System.Diagnostics.Trace.WriteLine("[EmployeeServices:updateEmployee] Exception " + exception.StackTrace);

                }
                finally
                {
                    ConnectionDao.closeConnection(conn);


                }
            }


            return returnString;


        }


        public bool isEmployeeEmailexist(string email)
        {
            EmployeeDao EmployeeDao = new EmployeeDao();

            return EmployeeDao.getEmployeeByEmail(email.Trim()) != null;

        }

        /*

        public List<EmployeeSearchResult> getEmployeeSearchResult(string lastName, string userName, string email)
        {
            List<EmployeeSearchResult> employeeSearchResultList = new List<EmployeeSearchResult>();

            EmployeeDao EmployeeDao = new EmployeeDao();





            if (userName != null && !IdProConstants.DEFAULTSTRING.Equals(userName.Trim()))
            {
                userName = userName.Trim();
                Employee employee = EmployeeDao.getEmployeeByUserName(userName);
                EmployeeSearchResult searchResult = convertEmployeeInSearchResultObject(employee);
                employeeSearchResultList.Add(searchResult);
            }


            else if (email != null && !IdProConstants.DEFAULTSTRING.Equals(email.Trim()))
            {
                email = email.Trim();
                Employee employee = EmployeeDao.getEmployeeByEmail(email);
                EmployeeSearchResult searchResult = convertEmployeeInSearchResultObject(employee);
                employeeSearchResultList.Add(searchResult);
            }


            else if (lastName != null && !IdProConstants.DEFAULTSTRING.Equals(lastName.Trim()))
            {
                lastName = lastName.Trim();
                List<Employee> employeeList = EmployeeDao.getEmployeeByLastName(lastName);
                foreach (Employee e in employeeList)
                {
                    EmployeeSearchResult searchResult = convertEmployeeInSearchResultObject(e);
                    employeeSearchResultList.Add(searchResult);
                }


            }


            return employeeSearchResultList;

        }

        public EmployeeSearchResult convertEmployeeInSearchResultObject(Employee employee)
        {
            EmployeeSearchResult result = new EmployeeSearchResult();

            if (employee != null)
            {
                result.NAME = employee.getFirstName() + " " + employee.getLastName();

                result.STATUS = employee.getEmployeeStatus();

                result.USERNAME = employee.getUser().getUserName();
            }
            return result;


        }

         * 
         * */
        public Employee getEmployeeByUserName(string userName)
        {
            EmployeeDao EmployeeDao = new EmployeeDao();

            return EmployeeDao.getEmployeeByUserName(userName);


        }

        public List<Employee> getEmployeeByLastName(string lastName)
        {
            EmployeeDao EmployeeDao = new EmployeeDao();
            return EmployeeDao.getEmployeeByLastName(lastName);
        }

        public Employee getEmployeeByEmail(string email)
        {
            EmployeeDao EmployeeDao = new EmployeeDao();
            return EmployeeDao.getEmployeeByEmail(email);


        }

        public Employee getEmployeeById(string id)
        {
            EmployeeDao EmployeeDao = new EmployeeDao();
            return EmployeeDao.getEmployeeById(id);


        }




    }
}