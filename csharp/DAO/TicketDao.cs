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
                parm1.Value = ticket.AccountID;

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

        //rohit, can you write here update ticket ,same way you wote updatecredit.ok i will .. no needto write update notes or assignment--only ticketok

        public string updateticket(SqlConnection conn, SqlTransaction trans, Ticket ticket)
        {

            // update code;  Based on id in Credit. update all the info no matter what changed.
            ConnectionDao ConnectionDao = new ConnectionDao();
            string returnString = IdProConstants.SUCCESS;


            SqlCommand cmd = null;
            SqlDataReader rs = null;

            string query = "Update ticket set accountid=@accountid,tickettype=@tickettype,assignto=@assignto,openby=@openby,opendate=@opendate,closedate=@closedate,status=@status,priority=@priority,assigndate=@assigndate,closeby=@closeby WHERE ticketid=@id";

            try
            {

                cmd = ConnectionDao.getSqlCommand(query, conn, trans);

                SqlParameter param1 = new SqlParameter();
                param1.ParameterName = "@accountid";
                param1.Value = ticket.AccountID;
                cmd.Parameters.Add(param1);

                SqlParameter param2 = new SqlParameter();
                param2.ParameterName = "@tickettype";
                param2.Value = ticket.TicketTypeString;
                cmd.Parameters.Add(param2);

                SqlParameter param3 = new SqlParameter();
                param3.ParameterName = "@assignto";
                param3.Value = ticket.AssignTo;
                cmd.Parameters.Add(param3);

                SqlParameter param4 = new SqlParameter();
                param4.ParameterName = "@openby";
                param4.Value = ticket.openby;
                cmd.Parameters.Add(param4);

                SqlParameter param5 = new SqlParameter();
                param5.ParameterName = "@opendate";
                param5.Value = ticket.OpenDate;
                cmd.Parameters.Add(param5);

                SqlParameter param6 = new SqlParameter();
                param6.ParameterName = "@closedate";
                param6.Value = ticket.CloseDate;
                cmd.Parameters.Add(param6);


                SqlParameter param7 = new SqlParameter();
                param7.ParameterName = "@status";
                param7.Value = ticket.Status;
                cmd.Parameters.Add(param7);

                SqlParameter param10 = new SqlParameter();
                param10.ParameterName = "@priority";
                param10.Value = ticket.Priority;
                cmd.Parameters.Add(param10);


                SqlParameter param11 = new SqlParameter();
                param11.ParameterName = "@assigndate";
                param11.Value =ticket.AssignDate;
                cmd.Parameters.Add(param11);

                SqlParameter param8 = new SqlParameter();
                param8.ParameterName = "@closeby";
                param8.Value = ticket.closeby;
                cmd.Parameters.Add(param8);


                SqlParameter param9 = new SqlParameter();
                param9.ParameterName = "@id";
                param9.Value = ticket.TicketID;
                cmd.Parameters.Add(param9);

                cmd.ExecuteNonQuery();



            }
            catch (Exception exception)
            {
                System.Diagnostics.Trace.WriteLine("[TicketDao:Updateticket] Exception " + exception.StackTrace);
                returnString = IdProConstants.FAIL;
            }
            finally
            {
                ConnectionDao.closeDabaseEntities(cmd, rs);
            }

            return returnString;
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

      
        

        public List<Ticket> getticketsByAccountid(long accountid) 
        {
            ConnectionDao connectionDao = new ConnectionDao();
            List<Ticket> tickets = new List<Ticket>();
            SqlCommand cmd = null;
            SqlConnection conn = null;
            SqlDataReader rs = null;

            string query = "select ticketid from Ticket where accountid=@accountid";   

            try
            {
                conn = connectionDao.getConnection();
                cmd = connectionDao.getSqlCommandWithoutTransaction(query, conn);
                SqlParameter param1 = new SqlParameter();
                param1.ParameterName = "@accountid";
                param1.Value = accountid;
                cmd.Parameters.Add(param1);
                rs = cmd.ExecuteReader();
                while (rs.Read())
                {

                    Ticket ticket = new Ticket();
                  
                    ticket=getticketbyticketid(Convert.ToInt32(rs["ticketid"]));

                    tickets.Add(ticket);
                 }
            }
            catch (Exception exception)
            {
                System.Diagnostics.Trace.WriteLine("[TicketDao:getticketid] Exception " + exception.StackTrace);
                tickets = null;

            }
            finally
            {
                connectionDao.closeConnection(conn);
                connectionDao.closeDabaseEntities(cmd, rs);
            }

            return tickets;


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


          





            return ticket;
        }


    }
}