using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;


namespace IDPRO.csharp.DAO
{
    public class ConnectionDao
    {
        public SqlConnection getConnection()
        {

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["constr11"].ConnectionString);
            conn.Open();
            return conn;
        }

        public SqlCommand getSqlCommandWithoutTransaction(string query, SqlConnection conn)
        {
            return new SqlCommand(query, conn);
        }

        public SqlCommand getSqlCommand(string query, SqlConnection conn, SqlTransaction tran)
        {
            return new SqlCommand(query, conn, tran);
        }
        

        public void closeDabaseEntities(SqlCommand command, SqlDataReader rs)
        {
            if (rs != null)
            {
                rs.Close();
            }

            if (command != null)
            {
                command.Dispose();
            }

        }


        public void closeConnection(SqlConnection conn)
        {
            if (conn != null)
            {
                conn.Close();
            }

        }




    }
}