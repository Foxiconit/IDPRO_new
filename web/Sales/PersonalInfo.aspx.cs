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
using System.Web.UI.HtmlControls;

namespace IDPRO
{
    public partial class PersonalInfo : System.Web.UI.Page
    {   

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("~/EmployeeLogin.aspx");
            }

            if (!Page.IsPostBack)
            {

                fillstates();
            }



            //if (txtcofirstname.Text != null && txtcolastname.Text != null && txtssn1co.Text != null && txtssn2co.Text != null && txtssn3co.Text != null)
            //{

            //}


        }

        public void fillstates()
        {

            CustomerDAO customeDao = new CustomerDAO();
            DataSet ds = new DataSet();
            ds = customeDao.getstates();
            ddlcity.DataSource = ds;
            ddlcity.DataTextField = "statename";
            ddlcity.DataValueField = "stateid";
            ddlcity.DataBind();



        }


        protected void btn_Click(object sender, EventArgs e)
        {


            customer primaryClient = new customer();
            CustomerDAO customeDao = new CustomerDAO();
            Account account = new Account();
            CustomerServices customerService = new CustomerServices();

            primaryClient.FirstName = txtFname.Text.Trim();
            primaryClient.LastName = txtLname.Text.Trim();
            primaryClient.Address1 = txtAddress.Text.Trim();
            primaryClient.Address2 = txtAddress1.Text.Trim();
            primaryClient.City = txtCity.Text.Trim();
            primaryClient.Zip = txtZip.Text.Trim();

            primaryClient.States = ddlcity.SelectedItem.Text.Trim();
            primaryClient.dob = Convert.ToDateTime(txtDOB.Text.Trim());
            primaryClient.ssn = txtSsn1.Text += txtSsn2.Text += txtSsn3.Text;
            primaryClient.Phone1 = txtphone1.Text.Trim();
            primaryClient.Phone2 = txtphone2.Text.Trim();
            primaryClient.PrimaryEmail = txtPEmail.Text.Trim();
            primaryClient.SecondaryEmail = txtSEmail.Text.Trim();

            customer secondaryClient = new customer();


         

            secondaryClient.CoFirstName = txtcofirstname.Text.Trim();
            secondaryClient.CoLastName = txtcolastname.Text.Trim();
            secondaryClient.Cossn = txtssn1co.Text += txtssn2co.Text += txtssn3co.Text;
            secondaryClient.Codob = Convert.ToDateTime(txtcodob.Text.Trim());

            if(!"".Equals(txtcofirstname.Text.Trim()))
            {
            secondaryClient.Codob = Convert.ToDateTime(txtcodob.Text.Trim());

            }

            secondaryClient.ssn = txtssn1co.Text += txtssn1co.Text += txtssn1co.Text;
            


            int ssncounter = 0;

            int ssncounter1 = 0;

            ssncounter = customeDao.getNumberOfCustomerBySSN(primaryClient.ssn);

            ssncounter1 = customeDao.getNumberOfCustomerBySSN(secondaryClient.ssn);


             if (ssncounter > 0)
            {

                lblmsg.Text = "Primary Client already exist in system";
            }

            else if (ssncounter1 > 0)
            {

                lblmsg.Text = "Co-Client already exist in system";
            }
            else
            {

                lblmsg.Text = customerService.customeradd(primaryClient,secondaryClient,account);

            }



            pnlmsg.Visible = true;
            pnltext.Visible = false;


        }

        public void add()
        {

            if (txtcofirstname.Text != "")
            {
                txtcolastname.Attributes.Add("required pattern", "[a-zA-Z ]+");
                txtssn1co.Attributes.Add("required pattern", "[a-zA-Z ]+");
            }
            else
            {

            }


            //string strfirstname = txtFname.Text.Trim();
            //string strlastname = txtLname.Text.Trim();
            //string straddress1 = txtAddress1.Text.Trim();
            //string straddress2 = txtAddress.Text.Trim();
            //string city = txtCity.Text.Trim();
            //string zip = txtZip.Text.Trim();
            //string dob = txtDOB.Text.Trim();
            //string ssn = txtSsn1.Text + txtSsn2.Text + txtSsn3.Text;
            //string phone1 = txtphone1.Text;
            //string phone2 = txtphone2.Text;
            //string pemail = txtPEmail.Text;
            //string Semail = txtSEmail.Text;
            //string returnString = customeDao.addcustomer(strfirstname, strlastname, straddress1, straddress2, city, zip, dob, ssn, phone1, phone2, pemail, Semail);

        }
    
        protected void txtcofirstname_TextChanged(object sender, EventArgs e)
        {
            if (txtcofirstname.Text != null)
            {

                txtcolastname.Attributes.Add("required pattern", "[a-zA-Z ]+");
                txtssn1co.Attributes.Add("required pattern", "[0-9]+");
                txtssn2co.Attributes.Add("required pattern", "[0-9]+");
                txtssn3co.Attributes.Add("required pattern", "[0-9]+");

            }
        }

        protected void txtcolastname_TextChanged(object sender, EventArgs e)
        {
            if (txtcolastname.Text != null)
            {

                txtcofirstname.Attributes.Add("required pattern", "[a-zA-Z ]+");
                txtssn1co.Attributes.Add("required pattern", "[0-9]+");
                txtssn2co.Attributes.Add("required pattern", "[0-9]+");
                txtssn3co.Attributes.Add("required pattern", "[0-9]+");

            }
        }

        protected void txtssn1co_TextChanged(object sender, EventArgs e)
        {
            if (txtssn1co.Text != null)
            {

                txtcofirstname.Attributes.Add("required pattern", "[a-zA-Z ]+");
                txtcolastname.Attributes.Add("required pattern", "[a-zA-Z ]+");
                txtssn2co.Attributes.Add("required pattern", "[0-9]+");
                txtssn3co.Attributes.Add("required pattern", "[0-9]+");

            }
        }

        protected void txtssn2co_TextChanged(object sender, EventArgs e)
        {
            if (txtssn2co.Text != null)
            {

                txtcofirstname.Attributes.Add("required pattern", "[a-zA-Z ]+");
                txtcolastname.Attributes.Add("required pattern", "[a-zA-Z ]+");
                txtssn1co.Attributes.Add("required pattern", "[0-9]+");
                txtssn3co.Attributes.Add("required pattern", "[0-9]+");

            }
        }

        protected void txtssn3co_TextChanged(object sender, EventArgs e)
        {
            if (txtssn3co.Text != null)
            {

                txtcofirstname.Attributes.Add("required pattern", "[a-zA-Z ]+");
                txtcolastname.Attributes.Add("required pattern", "[a-zA-Z ]+");
                txtssn1co.Attributes.Add("required pattern", "[0-9]+");
                txtssn2co.Attributes.Add("required pattern", "[0-9]+");

            }
        }


    }
}