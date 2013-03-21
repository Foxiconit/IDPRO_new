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
          //  string strreturn = IdProConstants.SUCCESS;
            SqlCommand cmd = null;
            SqlDataReader rs = null;
             int TICKETID = 0;
           
             string query = "INSERT INTO Ticket([accountid],[tickettype],[assignto],[openby],[opendate],[closedate],[status],[priority],[assigndate])VALUES (@accountid,@tickettype,@assignto,@openby,@opendate,@closedate,@status,@priority,@assigndate);SELECT ticketid=scope_identity();";
            // string query = "INSERT INTO Ticket([accountid],[tickettype],[assignto],[opendate],[closedate],[status],[priority],[assigndate])VALUES (@accountid,@tickettype,@assignto,@opendate,@closedate,@status,@priority,@assigndate);SELECT ticketid=scope_identity();";

           try
           {
               cmd = connectiondao.getSqlCommand(query, conn, trans);

               SqlParameter parm1 = new SqlParameter();
               parm1.ParameterName = "@accountid";
               parm1.Value = HttpContext.Current.Session["AccountID"]; 
               cmd.Parameters.Add(parm1);

               SqlParameter parm2 = new SqlParameter();
               parm2.ParameterName = "@tickettype";
               parm2.Value = ticket.TicketTypeString ;
               cmd.Parameters.Add(parm2);

               SqlParameter parm3 = new SqlParameter();
               parm3.ParameterName = "@assignto";
               parm3.Value = ticket.AssignTo;
               cmd.Parameters.Add(parm3);

               SqlParameter parm4 = new SqlParameter();
               parm4.ParameterName = "@openby";
               parm4.Value = HttpContext.Current.Session["username"];
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
                  TICKETID  = Int32.Parse(rs["ticketid"].ToString());
                
              
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

        public int addticketsNotedetail(SqlConnection conn, SqlTransaction trans, TicketNode ticketnode)
        {
            ConnectionDao connectiondao = new ConnectionDao();
           
            SqlCommand cmd = null;
            SqlDataReader rs = null;
            int TICKETNOTEID = 0;
            string query = "INSERT INTO TicketNote([ticketid],[notedate],[note])VALUES (@ticketid,@notedate,@note);SELECT Noteid=scope_identity();";
          // string query = "INSERT INTO TicketNote([ticketid],[note])VALUES (@ticketid,@note);SELECT Noteid=scope_identity();";
            try
            {
                cmd = connectiondao.getSqlCommand(query, conn, trans);

                SqlParameter parm1 = new SqlParameter();
                parm1.ParameterName = "@ticketid";
                parm1.Value = ticketnode.TicketID;
                cmd.Parameters.Add(parm1);

                SqlParameter parm2 = new SqlParameter();
                parm2.ParameterName = "@notedate";
                parm2.Value = ticketnode.NoteDate;
                cmd.Parameters.Add(parm2);

                SqlParameter parm3 = new SqlParameter();
                parm3.ParameterName = "@note";
                parm3.Value = ticketnode.Note;
                cmd.Parameters.Add(parm3);

               

                rs = cmd.ExecuteReader();
                if (rs.Read())
                {
                    TICKETNOTEID = Int32.Parse(rs["Noteid"].ToString());
                }
            }
            catch (Exception exception)
            {
                System.Diagnostics.Trace.WriteLine("[TicketDao:addticketsNotedetail] Exception " + exception.StackTrace);
            }
            finally
            {
                connectiondao.closeDabaseEntities(cmd, rs);
            }

            return TICKETNOTEID;

        }

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
        public string addticketsAssignment(SqlConnection conn, SqlTransaction trans, TicketAssignment ticketassignment)
        {
            ConnectionDao connectiondao = new ConnectionDao();
             string strreturn = IdProConstants.SUCCESS;
            SqlCommand cmd = null;
            SqlDataReader rs = null;
           // int TICKETNOTEID = 0;
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
                parm2.Value = HttpContext.Current.Session["username"];
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
                if (rs.Read())
                {
                   // TICKETAssignment = Int32.Parse(rs["Assignid"].ToString());
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

            return strreturn;

        }

        

        public Ticket getticketid(long ticketid)
        {
            ConnectionDao connectionDao = new ConnectionDao();
            Ticket ticket = new Ticket();
            SqlCommand cmd = null;
            SqlConnection conn = null;
            SqlDataReader rs = null;
            HttpContext.Current.Session["accountid"] = "1006";
            string query = "select * from Ticket where accountid='" + HttpContext.Current.Session["accountid"] + "'";

            try
            {
                conn = connectionDao.getConnection();
                cmd = connectionDao.getSqlCommandWithoutTransaction(query, conn);

                rs = cmd.ExecuteReader();

                if (rs.Read())
                {
                    ticket.TicketID = Convert .ToInt32(rs["ticketid"]);
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
        public DataSet gettickethistory(long ticketid)
        {

            TicketDao ticketdao = new TicketDao();
            Ticket ticket = ticketdao.getticketid(ticketid);
            ConnectionDao ConnectionDao = new ConnectionDao();
            SqlDataAdapter adp = new SqlDataAdapter("select * from Ticket where ticketid='" + ticket.TicketID + "'", ConnectionDao.getConnection());
            DataSet ds1 = new DataSet();
            adp.Fill(ds1);
            return ds1;
        
        }
        public DataSet getticketassignmenthistory(long ticketid)
        {
            TicketDao ticketdao = new TicketDao();
            Ticket ticket = ticketdao.getticketid(ticketid);
            ConnectionDao ConnectionDao = new ConnectionDao();
            SqlDataAdapter adp = new SqlDataAdapter("select * from TicketAssignment where ticketid='" + ticket.TicketID + "'", ConnectionDao.getConnection());
            DataSet ds3 = new DataSet();
            adp.Fill(ds3);
            return ds3;
        }
        public DataSet getticketnodehistory(long ticketid)
        {
            TicketDao ticketdao = new TicketDao();
            Ticket ticket = ticketdao.getticketid(ticketid);
            ConnectionDao ConnectionDao = new ConnectionDao();
            SqlDataAdapter adp = new SqlDataAdapter("select * from TicketNote where ticketid='" + ticket.TicketID + "'", ConnectionDao.getConnection());
            DataSet ds2 = new DataSet();
            adp.Fill(ds2);
            return ds2;
        }

       
    }

     
   
}