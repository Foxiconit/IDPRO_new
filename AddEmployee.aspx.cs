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
namespace IDPRO
{
    public partial class AddEmployee : System.Web.UI.Page
    {
        
        
        SqlConnection conn = new SqlConnection();
        string str;
      
        
        public Int32 intempid = 0;
        
        protected void Page_Load(object sender, EventArgs e)
        {

            string loginsession = Convert.ToString(Session["username"]);

            if (loginsession == null)
            {

                Response.Redirect("employeelogin.aspx?login=failed");

            }

            if (Request.QueryString["empid"] == null)
            {

                lblheadlabel.Text = "Add Employee";
                lblhead.Text = "Add Employee";
            }
            else
            {

                lblheadlabel.Text = "Edit Employee Details";
                lblhead.Text = "Edit Employee Details";
            }

            intempid += Convert.ToInt32(Request.QueryString["empid"]);
            if (Page.IsPostBack == false)
            {
                if (intempid > 0)
                {
                    FillValues();
                }
                filluserroles();
                filluserstatus();
                filldepartment();
            }

        }
        public void FillValues()
        {
            EmployeeDao empdao = new EmployeeDao();
            empdao.UserIdEmp = intempid;
            DataTable objDT = new DataTable();
            objDT = empdao.getemployeedetailfill();
            if (objDT.Rows.Count > 0)
            {

                txtFname.Text = objDT.Rows[0]["First_Name"].ToString();
                txtLname.Text = objDT.Rows[0]["Last_Name"].ToString();
                txtEmail.Text = objDT.Rows[0]["Email"].ToString();
                txtUsename.Text = objDT.Rows[0]["UserName"].ToString();
                txttitle.Text = objDT.Rows[0]["Title"].ToString();
                ddlDepartment.SelectedValue = objDT.Rows[0]["Department"].ToString();
                //txtPassword.Attributes.Add("value", "ThePassword");
                //txtPassword .Text = objDT.Rows[0]["Password"].ToString();
                ddlrole.SelectedItem.Text = objDT.Rows[0]["Role"].ToString();
                btnAdd.Text = "Update";

            }

        }


        protected void btnAdd_Click(object sender, EventArgs e)
        {
            Employee objEmployee = new Employee();
            if (btnAdd.Text == "Add")
            {

                objEmployee.FirstName = txtFname.Text;
                objEmployee.LastName = txtLname.Text;
                objEmployee.Email = txtEmail.Text;
                objEmployee.USER = new User();
                objEmployee.USER.Username = txtUsename.Text;
                objEmployee.USER.Password = txtPassword.Text;
                objEmployee.USER.Role = ddlrole.SelectedItem.Text;
                objEmployee.password = txtPassword.Text;
                objEmployee.Username = txtUsename.Text;
                objEmployee.status = ddlstatus.SelectedValue;
                objEmployee.title = txttitle.Text;
                objEmployee.department = ddlDepartment.Text;



                EmployeeServices addEmployee1 = new EmployeeServices();

                string returnstr = addEmployee1.addEmployee(objEmployee);

                if (returnstr == "Success")
                {
                    pnlmsg.Visible = true;
                    lblerror.Text = "";

                    pnltext.Visible = false;
                }
                else
                {
                    lblerror.Text = returnstr;
                    pnlmsg.Visible = false;

                    pnltext.Visible = true;
                }

            }
            else
            {
                EmployeeDao empdao = new EmployeeDao();
                empdao.UserIdEmp = intempid;
                objEmployee.EmployeeId = Convert.ToString(intempid);
                objEmployee.FirstName = txtFname.Text;
                objEmployee.LastName = txtLname.Text;
                objEmployee.Email = txtEmail.Text;
                objEmployee.USER = new User();
                objEmployee.USER.Username = txtUsename.Text;
                objEmployee.USER.Password = txtPassword.Text;
                objEmployee.USER.Role = ddlrole.SelectedValue;

                objEmployee.Username = txtUsename.Text;

                objEmployee.password = txtPassword.Text;
                objEmployee.status = ddlstatus.SelectedValue;
                objEmployee.role = ddlrole.Text;
                objEmployee.title = txttitle.Text;
                EmployeeServices addEmployee1 = new EmployeeServices();
                string returnstr = addEmployee1.updateEmployee(objEmployee);

                if (returnstr == "Success")
                {
                    pnlmsg.Visible = true;
                    lblerror.Text = "";

                    pnltext.Visible = false;
                }
                else
                {
                    lblerror.Text = returnstr;
                    pnlmsg.Visible = false;

                    pnltext.Visible = true;
                }




            }

        }

        public void filluserstatus()
        {

            EmployeeDao empdao = new EmployeeDao();
            DataSet ds = new DataSet();

            ds = empdao.getfillstatus();
            ddlstatus.DataSource = ds;

            ddlstatus.DataTextField = "description";
            ddlstatus.DataValueField = "status";
            ddlstatus.DataBind();



        }


        public void filluserroles()
        {
            EmployeeDao empdao = new EmployeeDao();
            DataSet ds = new DataSet();

            ds = empdao.getfillroles();
            ddlrole.DataSource = ds;

            ddlrole.DataTextField = "role";
            ddlrole.DataValueField = "description";
            ddlrole.DataBind();



        }

        public void filldepartment()
        {
            EmployeeDao empdao = new EmployeeDao();
            DataSet ds = new DataSet();

            ds = empdao.getfilldepartment();
            ddlDepartment.DataSource = ds;

            ddlDepartment.DataTextField = "Description";
            ddlDepartment.DataValueField = "Department_Name";
            ddlDepartment.DataBind();



        }

    }
}