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
    public class TicketAssignmentDao
    {
        public List<TicketAssignment> getticketassignmentbyid(long ticketid)
        {
            List<TicketAssignment> ticketassignmentlist = new List<TicketAssignment>();
            TicketAssignment ticketassignment = new TicketAssignment();
            ConnectionDao ConnectionDao = new ConnectionDao();
            SqlCommand cmd = null;
            SqlConnection conn = null;
            SqlDataReader dr = null;            
            string query = "select * from TicketAssignment where ticketid=@ticketid";
            try
            {
                conn = ConnectionDao.getConnection();
                cmd = ConnectionDao.getSqlCommandWithoutTransaction(query, conn);
                SqlParameter param1 = new SqlParameter();
                param1.ParameterName = "@ticketid";
                param1.Value = ticketid;
                cmd.Parameters.Add(param1);
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    if (dr["ticketid"] != null)
                    {
                        ticketassignment.TicketID = Convert.ToInt32(dr["ticketid"]);
                    }

                    if (dr["assignby"] != null)
                    {
                        ticketassignment.AssignBy = dr["assignby"].ToString();
                    }

                    if (dr["assignto"] != null)
                    {
                        ticketassignment.AssignTo = dr["assignto"].ToString();
                    }

                    if (dr["assigndate"] != null)
                    {
                        ticketassignment.AssignDate = Convert.ToDateTime(dr["assigndate"]);
                    }
                    ticketassignmentlist.Add(ticketassignment);
                }
                dr.Close();
            }
            catch (Exception exception)
            {
                System.Diagnostics.Trace.WriteLine("[TicketAssignmentList:GetList] Exception " + exception.StackTrace);
                ticketassignmentlist = null;

            }
            finally
            {
                ConnectionDao.closeConnection(conn);
                ConnectionDao.closeDabaseEntities(cmd, dr);
            }

            return ticketassignmentlist;          
        }

        public string addticketsAssignment(SqlConnection conn, SqlTransaction trans, TicketAssignment ticketassignment)
        {
            ConnectionDao connectiondao = new ConnectionDao();
            string strreturn = IdProConstants.SUCCESS;
            SqlCommand cmd = null;
            SqlDataReader rs = null;
            
            string query = "INSERT INTO TicketAssignment([ticketid],[assignby],[assignto],[assigndate])VALUES (@ticketid,@assignby,@assignto,@assigndate)";

            try
            {
                cmd = connectiondao.getSqlCommand(query, conn, trans);

                SqlParameter parm1 = new SqlParameter();
                parm1.ParameterName = "@ticketid";
                parm1.Value = ticketassignment.TicketID;
                cmd.Parameters.Add(parm1);

                SqlParameter parm2 = new SqlParameter();
                parm2.ParameterName = "@assignby";
                parm2.Value = ticketassignment.AssignBy;
                cmd.Parameters.Add(parm2);

                SqlParameter parm3 = new SqlParameter();
                parm3.ParameterName = "@assignto";
                parm3.Value = ticketassignment.AssignTo;
                cmd.Parameters.Add(parm3);

                SqlParameter parm4 = new SqlParameter();
                parm4.ParameterName = "@assigndate";
                parm4.Value = ticketassignment.AssignDate;
                cmd.Parameters.Add(parm4);


                rs = cmd.ExecuteReader();
               
            }
            catch (Exception exception)
            {
                System.Diagnostics.Trace.WriteLine("[TicketDao:addticketsTypedetail] Exception " + exception.StackTrace);
            }
            finally
            {
                connectiondao.closeDabaseEntities(cmd, rs);
            }

            return strreturn;

        }
    }
}