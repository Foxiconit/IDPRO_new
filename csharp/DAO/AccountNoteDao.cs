using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using IDPRO.csharp.Model;
using System.Data.SqlClient;
using IDPRO.csharp.Constants;
using IDPRO.csharp.DAO;

namespace IDPRO.csharp.DAO
{
    public class AccountNoteDao
    {
        public List<AccountNotes> getaccountnotebyid(long AccountId)
        {
            AccountNotes accountnote = new AccountNotes();
            List<AccountNotes> accountnotelist = new List<AccountNotes>();
            ConnectionDao ConnectionDao = new ConnectionDao();
            SqlCommand cmd = null;
            SqlConnection conn = null;
            SqlDataReader dr = null;
            string query = "select * from Account_Notes where accountid=@accountid";
            try
            {
                conn = ConnectionDao.getConnection();
                cmd = ConnectionDao.getSqlCommandWithoutTransaction(query, conn);
                SqlParameter param1 = new SqlParameter();
                param1.ParameterName = "@accountid";
                param1.Value = AccountId;
                cmd.Parameters.Add(param1);
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    accountnote.NoteID = Convert.ToInt32(dr["noteid"]);
                    accountnote.AccountId = AccountId;

                    if (dr["notedate"] != null)
                    {
                        accountnote.NoteDate = Convert.ToDateTime(dr["notedate"]);
                    }

                    if (dr["note"] != null)
                    {
                        accountnote.Note = dr["note"].ToString();
                    }

                    if (dr["added_by"] != null)
                    {
                        accountnote.addedBY = dr["added_by"].ToString();
                    }
                    accountnotelist.Add(accountnote);
                }
                dr.Close();
            }
            catch (Exception exception)
            {
                System.Diagnostics.Trace.WriteLine("[AccountNote:GetList] Exception " + exception.StackTrace);
                accountnotelist = null;

            }
            finally
            {
                ConnectionDao.closeConnection(conn);
                ConnectionDao.closeDabaseEntities(cmd, dr);
            }
            return accountnotelist;
        }

        public int addAccountNotedetail(SqlConnection conn, SqlTransaction trans, AccountNotes accountnotes)
        {
            ConnectionDao connectiondao = new ConnectionDao();

            SqlCommand cmd = null;
            SqlDataReader rs = null;
            int accountnoteid = 0;
            string query = "INSERT INTO Account_Notes([note],[notedate],[accountid],[added_by])VALUES (@note,@notedate,@accountid,@addedby);SELECT Noteid=scope_identity();";
            try
            {
                cmd = connectiondao.getSqlCommand(query, conn, trans);

                SqlParameter parm1 = new SqlParameter();
                parm1.ParameterName = "@note";
                parm1.Value = accountnotes.Note;
                cmd.Parameters.Add(parm1);

                SqlParameter parm2 = new SqlParameter();
                parm2.ParameterName = "@notedate";
                parm2.Value = accountnotes.NoteDate;
                cmd.Parameters.Add(parm2);

                SqlParameter parm3 = new SqlParameter();
                parm3.ParameterName = "@accountid";
                parm3.Value = accountnotes.AccountId;
                cmd.Parameters.Add(parm3);


                SqlParameter parm4 = new SqlParameter();
                parm4.ParameterName = "@addedby";
                parm4.Value = accountnotes.addedBY;
                cmd.Parameters.Add(parm4);

                rs = cmd.ExecuteReader();
                if (rs.Read())
                {
                    accountnoteid = Int32.Parse(rs["Noteid"].ToString());
                }
            }
            catch (Exception exception)
            {
                System.Diagnostics.Trace.WriteLine("[AccountNoteDao:addAccountNotedetail] Exception " + exception.StackTrace);
            }
            finally
            {
                connectiondao.closeDabaseEntities(cmd, rs);
            }

            return accountnoteid;

        }
    }
}