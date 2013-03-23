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
    public class CreditNotesDao
    {
        public List<Credito_Notes> getcreditnotebyid(long creditid)
        {
            Credito_Notes creditnote = new Credito_Notes();
            List<Credito_Notes> creditnotelist = new List<Credito_Notes>();
            ConnectionDao ConnectionDao = new ConnectionDao();
            SqlCommand cmd = null;
            SqlConnection conn = null;
            SqlDataReader dr = null;
            string query = "select * from Credit_Notes where creditid=@creditid";
            try
            {
                conn = ConnectionDao.getConnection();
                cmd = ConnectionDao.getSqlCommandWithoutTransaction(query, conn);
                SqlParameter param1 = new SqlParameter();
                param1.ParameterName = "@creditid";
                param1.Value = creditid;
                cmd.Parameters.Add(param1);
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    creditnote.NoteID = Convert.ToInt32(dr["noteid"]);
                    creditnote.creditId = creditid;
                    
                    if (dr["notedate"] != null)
                    {
                        creditnote.NoteDate = Convert.ToDateTime(dr["notedate"]);
                    }

                    if (dr["note"] != null)
                    {
                        creditnote.Note = dr["note"].ToString();
                    }

                    if (dr["added_by"] != null)
                    {
                        creditnote.addedBY  = dr["added_by"].ToString();
                    }
                    creditnotelist.Add(creditnote);
                }
                dr.Close();
            }
            catch (Exception exception)
            {
                System.Diagnostics.Trace.WriteLine("[CreditNote:GetList] Exception " + exception.StackTrace);
                creditnotelist = null;

            }
            finally
            {
                ConnectionDao.closeConnection(conn);
                ConnectionDao.closeDabaseEntities(cmd, dr);
            }
            return creditnotelist;
        }

        public int addcreditNotedetail(SqlConnection conn, SqlTransaction trans, Credito_Notes  creditnotes)
        {
            ConnectionDao connectiondao = new ConnectionDao();

            SqlCommand cmd = null;
            SqlDataReader rs = null;
            int creditnoteid = 0;
            string query = "INSERT INTO Credit_Notes([note],[notedate],[creditid],[added_by])VALUES (@note,@notedate,@creditid,@addedby);SELECT Noteid=scope_identity();";
            try
            {
                cmd = connectiondao.getSqlCommand(query, conn, trans);

                SqlParameter parm1 = new SqlParameter();
                parm1.ParameterName = "@note";
                parm1.Value = creditnotes.Note;
                cmd.Parameters.Add(parm1);

                SqlParameter parm2 = new SqlParameter();
                parm2.ParameterName = "@notedate";
                parm2.Value = creditnotes.NoteDate;
                cmd.Parameters.Add(parm2);

                SqlParameter parm3 = new SqlParameter();
                parm3.ParameterName = "@creditid";
                parm3.Value = creditnotes.creditId;
                cmd.Parameters.Add(parm3);


                SqlParameter parm4 = new SqlParameter();
                parm4.ParameterName = "@addedby";
                parm4.Value = creditnotes.addedBY;
                cmd.Parameters.Add(parm4);

                rs = cmd.ExecuteReader();
                if (rs.Read())
                {
                    creditnoteid = Int32.Parse(rs["Noteid"].ToString());
                }
            }
            catch (Exception exception)
            {
                System.Diagnostics.Trace.WriteLine("[CreditDao:addCreditNotedetail] Exception " + exception.StackTrace);
            }
            finally
            {
                connectiondao.closeDabaseEntities(cmd, rs);
            }

            return creditnoteid;

        }

    }
}