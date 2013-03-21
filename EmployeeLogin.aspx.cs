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
using IDPRO.csharp.Constants;
using System.Web.Security;



namespace IDPRO
{
    public partial class EmployeeLogin : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {


            if (Request.QueryString["login"] == "failed")
            {

                lblMsg.Text = "you are not authorised to login";

            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string userName = txtUsername.Text.Trim().ToUpper();
            string passWord = txtPassword.Text.Trim();
            UserServices userService = new UserServices();
            string returnString = userService.ValidateUser(userName, passWord);

            if (IdProConstants.SUCCESS.Equals(returnString))
            {
                User user = new User();
                user = userService.getUserbyUserName(userName);

                EmployeeServices employeeService = new EmployeeServices();

                Employee employee = new Employee();

                employee = employeeService.getEmployeeByUserName(userName);



                if (user == null || employee == null)
                {
                    returnString = IdProConstants.ADMIN;
                }
                //else if (UserStatusesConstants.INACTIVEEMPLOYEE.Equals(employee.getEmployeeStatus()))
                //{
                //    returnString = TransactionConfirmMessages.INACTIVEUSER;
                //}
                else
                {
                    string role = user.Role.Trim();
                    Session["role"] = role;
                    Session["username"] = user.Username.Trim();


                    Session["name"] = employee.FirstName;


                    FormsAuthenticationTicket tkt = default(FormsAuthenticationTicket);
                    string cookiestr = null;
                    System.Web.HttpCookie ck = default(System.Web.HttpCookie);

                    tkt = new FormsAuthenticationTicket(1, txtUsername.Text, DateTime.Now, DateTime.Now.AddMinutes(30), false, role);
                    cookiestr = FormsAuthentication.Encrypt(tkt);
                    ck = new System.Web.HttpCookie(FormsAuthentication.FormsCookieName, cookiestr);

                    ck.Path = FormsAuthentication.FormsCookiePath;
                    Response.Cookies.Add(ck);




                    string strRedirect = null;
                    strRedirect = Request["ReturnURL"];
                    if (!string.IsNullOrEmpty(strRedirect) & strRedirect != "/")
                    {
                        Response.Redirect(strRedirect, true);
                    }
                    else
                    {
                        strRedirect = "ManageEmployee.aspx";
                        Response.Redirect(strRedirect, true);
                    }


                }
            }
            lblMsg.Text = returnString;


        }
    }
}