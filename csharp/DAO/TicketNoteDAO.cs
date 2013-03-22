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
            List<TicketNote> ticketnotelist = new List<TicketNote>();
            ConnectionDao ConnectionDao = new ConnectionDao();
            SqlDataAdapter adp = new SqlDataAdapter("select * from TicketNote where ticketid='" + ticketid  + "'", ConnectionDao.getConnection());
            DataSet ds2 = new DataSet();
            adp.Fill(ds2);
            foreach (DataRow dr in ds2.Tables[0].Rows)
            {
                TicketNote ticketnote = new TicketNote();
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

            return ticketnotelist;

        }

        public int addticketsNotedetail(SqlConnection conn, SqlTransaction trans, TicketNote ticketnote)
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