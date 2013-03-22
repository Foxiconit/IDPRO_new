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

    public class TicketDao
    {
        public string strid = "";
        public int addticketsdetail(SqlConnection conn, SqlTransaction trans, Ticket ticket)
        {
            ConnectionDao connectiondao = new ConnectionDao();
            
            SqlCommand cmd = null;
            SqlDataReader rs = null;
            int TICKETID = 0;

            string query = "INSERT INTO Ticket([accountid],[tickettype],[assignto],[openby],[opendate],[closedate],[status],[priority],[assigndate])VALUES (@accountid,@tickettype,@assignto,@openby,@opendate,@closedate,@status,@priority,@assigndate);SELECT ticketid=scope_identity();";

            try
            {
                cmd = connectiondao.getSqlCommand(query, conn, trans);

                SqlParameter parm1 = new SqlParameter();
                parm1.ParameterName = "@accountid";
                parm1.Value = ticket.AccountID;///don't use session here, it has to be set from aspx.cs, set fron aspx.cs

                cmd.Parameters.Add(parm1);

                SqlParameter parm2 = new SqlParameter();
                parm2.ParameterName = "@tickettype";
                parm2.Value = ticket.TicketTypeString;
                cmd.Parameters.Add(parm2);

                SqlParameter parm3 = new SqlParameter();
                parm3.ParameterName = "@assignto";
                parm3.Value = ticket.AssignTo;
                cmd.Parameters.Add(parm3);

                SqlParameter parm4 = new SqlParameter();
                parm4.ParameterName = "@openby";
                parm4.Value = ticket.openby;
                cmd.Parameters.Add(parm4);

                SqlParameter parm5 = new SqlParameter();
                parm5.ParameterName = "@opendate";
                parm5.Value = ticket.AssignDate;
                cmd.Parameters.Add(parm5);

                SqlParameter parm6 = new SqlParameter();
                parm6.ParameterName = "@closedate";
                parm6.Value = "";
                cmd.Parameters.Add(parm6);

                SqlParameter parm7 = new SqlParameter();
                parm7.ParameterName = "@status";
                parm7.Value = "Open";
                cmd.Parameters.Add(parm7);

                SqlParameter parm8 = new SqlParameter();
                parm8.ParameterName = "@priority";
                parm8.Value = ticket.Priority;
                cmd.Parameters.Add(parm8);

                SqlParameter parm9 = new SqlParameter();
                parm9.ParameterName = "@assigndate";
                parm9.Value = ticket.AssignDate;
                cmd.Parameters.Add(parm9);

                rs = cmd.ExecuteReader();
                if (rs.Read())
                {
                    TICKETID = Int32.Parse(rs["ticketid"].ToString());


                }
            }
            catch (Exception exception)
            {
                System.Diagnostics.Trace.WriteLine("[TicketDao:addticketsdetail] Exception " + exception.StackTrace);
            }
            finally
            {
                connectiondao.closeDabaseEntities(cmd, rs);
            }
            return TICKETID;

        }


        // here you will have ticket_note objet passed instead of ticket. ticket note will have ticket id in it. like table ticket assignment


        public int addticketsTypedetail(SqlConnection conn, SqlTransaction trans, Ticket ticket)
        {
            ConnectionDao connectiondao = new ConnectionDao();
            //string strreturn = IdProConstants.SUCCESS;
            SqlCommand cmd = null;
            SqlDataReader rs = null;
            int TICKETNOTEID = 0;
            string query = "INSERT INTO TicketType([Tickettype],[Priority],[assignment])VALUES (@Tickettype,@Priority,@assignment);SELECT TicketType_id=scope_identity();";

            try
            {
                cmd = connectiondao.getSqlCommand(query, conn, trans);

                SqlParameter parm1 = new SqlParameter();
                parm1.ParameterName = "@Tickettype";
                parm1.Value = ticket.TicketTypeString;
                cmd.Parameters.Add(parm1);

                SqlParameter parm2 = new SqlParameter();
                parm2.ParameterName = "@Priority";
                parm2.Value = ticket.Priority;
                cmd.Parameters.Add(parm2);

                SqlParameter parm3 = new SqlParameter();
                parm3.ParameterName = "@assignment";
                parm3.Value = ticket.AssignTo;
                cmd.Parameters.Add(parm3);

                rs = cmd.ExecuteReader();
                if (rs.Read())
                {
                    TICKETNOTEID = Int32.Parse(rs["TicketType_id"].ToString());
                }
            }
            catch (Exception exception)
            {
                System.Diagnostics.Trace.WriteLine("[TicketDao:addticketsTypedetail] Exception " + exception.StackTrace);
            }
            finally
            {
                connectiondao.closeDabaseEntities(cmd, rs);
            }
            return TICKETNOTEID;
        }
        public DataSet gettickettype()
        {
            Employee objempstatus = new Employee();
            ConnectionDao ConnectionDao = new ConnectionDao();
            SqlDataAdapter adp = new SqlDataAdapter("select * from TicketType", ConnectionDao.getConnection());
            DataSet ds1 = new DataSet();
            adp.Fill(ds1);
            return ds1;
        }

        //here ticket assignment object instead of ticket that will also have ticket id in it. Like table ticket assignment




        public Ticket getticketid(long accountid)  //where do you use this ticket id and why
        {
            ConnectionDao connectionDao = new ConnectionDao();
            Ticket ticket = new Ticket();
            SqlCommand cmd = null;
            SqlConnection conn = null;
            SqlDataReader rs = null;

            string query = "select * from Ticket where accountid=@accountid";   //this is very bad-- you don't access htt session in Data access layer

            try
            {
                conn = connectionDao.getConnection();
                cmd = connectionDao.getSqlCommandWithoutTransaction(query, conn);
                SqlParameter param1 = new SqlParameter();
                param1.ParameterName = "@accountid";
                param1.Value = accountid;
                cmd.Parameters.Add(param1);
                rs = cmd.ExecuteReader();
                if (rs.Read())
                {
                    ticket.TicketID = Convert.ToInt32(rs["ticketid"]);
                    strid = Convert.ToString(ticket.TicketID);
                }
                else
                {

                    ticket = null;
                }

            }
            catch (Exception exception)
            {
                System.Diagnostics.Trace.WriteLine("[TicketDao:getticketid] Exception " + exception.StackTrace);
                ticket = null;

            }
            finally
            {
                connectionDao.closeConnection(conn);
                connectionDao.closeDabaseEntities(cmd, rs);
            }

            return ticket;


        }

        public DataSet getAssigned()
        {
            ConnectionDao ConnectionDao = new ConnectionDao();
            SqlDataAdapter adp = new SqlDataAdapter("select * from Department where Department_Name='Account'", ConnectionDao.getConnection());
            DataSet ds1 = new DataSet();
            adp.Fill(ds1);
            return ds1;
        }
        public DataSet getpriority()
        {
            ConnectionDao ConnectionDao = new ConnectionDao();
            SqlDataAdapter adp = new SqlDataAdapter("select * from TicketPriority", ConnectionDao.getConnection());
            DataSet ds1 = new DataSet();
            adp.Fill(ds1);
            return ds1;
        }


        public Ticket getticketbyticketid(long ticketid)
        {
            Ticket ticket = new Ticket();

            ConnectionDao ConnectionDao = new ConnectionDao();

            string query = "select * from ticket where ticketid=@ticketid";
            SqlCommand cmd = null;
            SqlConnection conn = null;
            SqlDataReader rs = null;
            conn = ConnectionDao.getConnection();
            try
            {

                cmd = ConnectionDao.getSqlCommandWithoutTransaction(query, conn);

                SqlParameter param1 = new SqlParameter();
                param1.ParameterName = "@ticketid";
                param1.Value = ticketid;
                cmd.Parameters.Add(param1);

                rs = cmd.ExecuteReader();

                if (rs.Read())
                {
                    ticket.TicketID = Convert.ToInt32(rs["ticketid"]);
                    ticket.AccountID = Convert.ToInt32(rs["accountid"]);
                    ticket.TicketTypeString = rs["tickettype"].ToString();
                    ticket.AssignTo = rs["assignto"].ToString();
                    ticket.openby = rs["openby"].ToString();
                    ticket.OpenDate = Convert.ToDateTime(rs["opendate"]);
                    ticket.CloseDate = Convert.ToDateTime(rs["closedate"]);
                    ticket.Status = rs["status"].ToString();
                    ticket.Priority = rs["priority"].ToString();
                    ticket.closeby = rs["closeby"].ToString();
                    ticket.AssignDate = Convert.ToDateTime(rs["assigndate"]);
                }
               

            }

            catch (Exception exception)
            {
                System.Diagnostics.Trace.WriteLine("[CustomerDAO:getticketHistory] Exception " + exception.StackTrace);


            }
            finally
            {
                ConnectionDao.closeConnection(conn);
                ConnectionDao.closeDabaseEntities(cmd, rs);
            }


            //please don't user non parameterized query.SQL Injection issue





            return ticket;
        }


    }
}