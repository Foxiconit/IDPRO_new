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
    public class TicketNoteDAO
    {
        public List<TicketNote> getticketnotebyid(long ticketid)
        {
            TicketNote ticketnote = new TicketNote();
            List<TicketNote> ticketnotelist = new List<TicketNote>();
            ConnectionDao ConnectionDao = new ConnectionDao();

            SqlCommand cmd = null;
            SqlConnection conn = null;
            SqlDataReader dr = null;
            string query = "select * from TicketNote where ticketid=@ticketid";          
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
                       ticketnote.TicketID = Convert.ToInt32(dr["ticketid"]);
                   }

                   if (dr["notedate"] != null)
                   {
                       ticketnote.NoteDate = Convert.ToDateTime(dr["notedate"]);
                   }

                   if (dr["note"] != null)
                   {
                       ticketnote.Note = dr["note"].ToString();
                   }
                   ticketnotelist.Add(ticketnote);
                }
                dr.Close();
            }
            catch (Exception exception)
            {
                System.Diagnostics.Trace.WriteLine("[TicketNote:GetList] Exception " + exception.StackTrace);
                ticketnotelist = null;

            }
            finally
            {
                ConnectionDao.closeConnection(conn);
                ConnectionDao.closeDabaseEntities(cmd, dr);
            }            
            return ticketnotelist;            
        }

        public int addticketsNotedetail(SqlConnection conn, SqlTransaction trans, TicketNote ticketnote)
        {
            ConnectionDao connectiondao = new ConnectionDao();

            SqlCommand cmd = null;
            SqlDataReader rs = null;
            int TICKETNOTEID = 0;
            string query = "INSERT INTO TicketNote([ticketid],[notedate],[note])VALUES (@ticketid,@notedate,@note);SELECT Noteid=scope_identity();";            
            try
            {
                cmd = connectiondao.getSqlCommand(query, conn, trans);

                SqlParameter parm1 = new SqlParameter();
                parm1.ParameterName = "@ticketid";
                parm1.Value = ticketnote.TicketID;
                cmd.Parameters.Add(parm1);

                SqlParameter parm2 = new SqlParameter();
                parm2.ParameterName = "@notedate";
                parm2.Value = ticketnote.NoteDate;
                cmd.Parameters.Add(parm2);

                SqlParameter parm3 = new SqlParameter();
                parm3.ParameterName = "@note";
                parm3.Value = ticketnote.Note;
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

    }
}