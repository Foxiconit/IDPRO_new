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
    public class MenuDao
    {
        public DataSet getmenu(string department)
        {
            EmployeeDao employeedao = new EmployeeDao();
            Employee employee = employeedao.getempdepartment(department);
            ConnectionDao ConnectionDao = new ConnectionDao();
            SqlDataAdapter adp = new SqlDataAdapter("select department_name,weburl from Department where Department_Name='" + employee.department + "'", ConnectionDao.getConnection());
            DataSet ds4 = new DataSet();
            adp.Fill(ds4);
            string Department = ds4.Tables[0].Rows[0]["department_name"].ToString();
            if (Department == "Sales")
            {
                ds4 = addMenu(ds4, "Email");
            }

            if (Department == "Corporate")
            {
                ds4.Tables[0].Rows.RemoveAt (0);
                ds4.AcceptChanges();


                ds4 = addMenu(ds4, "Customer");
                ds4 = addMenu(ds4, "Email");
              
                ds4 = addMenu(ds4, "Ticketing");
                ds4 = addMenu(ds4, "Dashboard");
                ds4 = addMenu(ds4, "Reports");
                
                


            }


            if (Department == "Customer Service")
            {
                ds4 = addMenu(ds4, "Email");




            }

            return ds4;
        }
        public string getWebUrl(string department)
        {
            string retval = string.Empty;
            string sql = "select weburl from department where department_name = '" + department + "'";
            ConnectionDao ConnectionDao = new ConnectionDao();
            SqlDataAdapter adp = new SqlDataAdapter(sql, ConnectionDao.getConnection());
            DataSet ds = new DataSet();
            adp.Fill(ds);
            retval = ds.Tables[0].Rows[0]["weburl"].ToString();
            if (retval == "")
            {
                retval = "javascript:void(0);";
            }
            return retval;
        }
        public DataSet addMenu(DataSet ds ,string Menu)
        {
           
            DataRow dr = ds.Tables[0].NewRow();
            dr["department_name"] = Menu;
            dr["weburl"] = getWebUrl(Menu);
            ds.Tables[0].Rows.Add(dr);
            return ds;
        }
    }
    
}