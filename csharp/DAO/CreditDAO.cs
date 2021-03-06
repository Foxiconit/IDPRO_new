﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using IDPRO.csharp.Model;
using System.Data.SqlClient;
using IDPRO.csharp.Constants;
using System.Data;

namespace IDPRO.csharp.DAO
{
    public class CreditDAO
    {

        public String addCredit(SqlConnection conn, SqlTransaction trans, Credit credit)
        {
            //Dao Code return new credit Id;ok

            ConnectionDao ConnectionDao = new ConnectionDao();
            string returnString = IdProConstants.SUCCESS;
            SqlCommand cmd = null;
            SqlDataReader rs = null;
            string query = "INSERT INTO credit([Account_Id],[Creditor_Name],[Account_Number],[Original_Balance],[Loan_Type],[Current_Creditor_Name],[Current_Creditor_Account_number],[Status],[Balance_at_Settlement],[Settlement_Type],[settlement_amount],[fees_amount],[settlement_date],[settlement_creditor_Name],[added_by],[added_date],[last_updated_by],[last_updated_date]) VALUES(@Account_Id,@Creditor_Name,@Account_Number,@Original_Balance,@Loan_Type,@Current_Creditor_Name,@Current_Creditor_Account_number,@Status,@Balance_at_Settlement,@Settlement_Type,@settlement_amount,@fees_amount,@settlement_date,@settlement_creditor_Name,@added_by,@added_date,@last_updated_by,@last_updated_date)";
            try
            {
                cmd = ConnectionDao.getSqlCommand(query, conn, trans);

                SqlParameter param1 = new SqlParameter();
                param1.ParameterName = "@Account_Id";
                param1.Value = credit.Account_Id;
                cmd.Parameters.Add(param1);

                SqlParameter param2 = new SqlParameter();
                param2.ParameterName = "@Creditor_Name";
                param2.Value = credit.Creditor_Name;
                cmd.Parameters.Add(param2);

                SqlParameter param3 = new SqlParameter();
                param3.ParameterName = "@Account_Number";
                param3.Value = credit.Account_Number;
                cmd.Parameters.Add(param3);

                SqlParameter param4 = new SqlParameter();
                param4.ParameterName = "@Original_Balance";
                param4.Value = credit.Orignal_Balance;
                cmd.Parameters.Add(param4);

                SqlParameter param5 = new SqlParameter();
                param5.ParameterName = "@Loan_Type";
                param5.Value = credit.Loan_Type;
                cmd.Parameters.Add(param5);

                SqlParameter param6 = new SqlParameter();
                param6.ParameterName = "@Current_Creditor_Name";
                param6.Value = credit.Current_Creditor_Name;
                cmd.Parameters.Add(param6);


                SqlParameter param7 = new SqlParameter();
                param7.ParameterName = "@Current_Creditor_Account_number";
                param7.Value = credit.Current_Creditor_Account_No;
                cmd.Parameters.Add(param7);

                SqlParameter param10 = new SqlParameter();
                param10.ParameterName = "@Status";
                param10.Value = credit.Status;
                cmd.Parameters.Add(param10);


                SqlParameter param11 = new SqlParameter();
                param11.ParameterName = "@Balance_at_Settlement";
                param11.Value = credit.Balance_at_Settlement;
                cmd.Parameters.Add(param11);

                SqlParameter param8 = new SqlParameter();
                param8.ParameterName = "@Settlement_Type";
                param8.Value = credit.Settlement_Type;
                cmd.Parameters.Add(param8);



                SqlParameter param9 = new SqlParameter();
                param9.ParameterName = "@settlement_amount";
                param9.Value = credit.Settlement_Amount;
                cmd.Parameters.Add(param9);




                SqlParameter param12 = new SqlParameter();
                param12.ParameterName = "@fees_amount";
                param12.Value = credit.Fees_Amount;
                cmd.Parameters.Add(param12);


                SqlParameter param13 = new SqlParameter();
                param13.ParameterName = "@settlement_date";
                param13.Value = credit.Settlement_Date;
                cmd.Parameters.Add(param13);

                SqlParameter param14 = new SqlParameter();
                param14.ParameterName = "@settlement_creditor_Name";
                param14.Value = credit.Settlement_Creditor_Name;
                cmd.Parameters.Add(param14);



                SqlParameter param15 = new SqlParameter();
                param15.ParameterName = "@added_by";
                param15.Value = credit.AddedBy;
                cmd.Parameters.Add(param15);



                SqlParameter param16 = new SqlParameter();
                param16.ParameterName = "@added_date";
                param16.Value = credit.AddedDate;
                cmd.Parameters.Add(param16);

                SqlParameter param17 = new SqlParameter();
                param17.ParameterName = "@last_updated_by";
                param17.Value = credit.Last_Updatedby;
                cmd.Parameters.Add(param17);



                SqlParameter param18 = new SqlParameter();
                param18.ParameterName = "@last_updated_date";
                param18.Value = credit.Last_UpdatedDate;
                cmd.Parameters.Add(param18);

                cmd.ExecuteNonQuery();
            }
            catch (Exception exception)
            {
                System.Diagnostics.Trace.WriteLine("[CreditDao:AddCredit] Exception " + exception.StackTrace);
                returnString = IdProConstants.FAIL;
            }
            finally
            {
                ConnectionDao.closeDabaseEntities(cmd, rs);
            }

            return returnString;



        }

        public string updateCredit(SqlConnection conn, SqlTransaction trans, Credit credit)
        {

            // update code;  Based on id in Credit. update all the info no matter what changed.
            ConnectionDao ConnectionDao = new ConnectionDao();
            string returnString = IdProConstants.SUCCESS;


            SqlCommand cmd = null;
            SqlDataReader rs = null;

            string query = "Update credit set Account_Id=@Account_Id,Creditor_Name=@Creditor_Name,Account_Number=@Account_Number,Original_Balance=@Original_Balance,Loan_Type=@Loan_Type,Current_Creditor_Name=@Current_Creditor_Name,Current_Creditor_Account_number=@Current_Creditor_Account_number,Status=@Status,Balance_at_Settlement=@Balance_at_Settlement,Settlement_Type=@Settlement_Type,settlement_amount=@settlement_amount,fees_amount=@fees_amount,settlement_date=@settlement_date,settlement_creditor_Name=@settlement_creditor_Name,added_by=@added_by,added_date=@added_date,last_updated_by=@last_updated_by,last_updated_date=@last_updated_date WHERE Credit_id=@id";

            try
            {

                cmd = ConnectionDao.getSqlCommand(query, conn, trans);

                SqlParameter param1 = new SqlParameter();
                param1.ParameterName = "@Account_Id";
                param1.Value = credit.Account_Id;
                cmd.Parameters.Add(param1);

                SqlParameter param2 = new SqlParameter();
                param2.ParameterName = "@Creditor_Name";
                param2.Value = credit.Creditor_Name;
                cmd.Parameters.Add(param2);

                SqlParameter param3 = new SqlParameter();
                param3.ParameterName = "@Account_Number";
                param3.Value = credit.Account_Number;
                cmd.Parameters.Add(param3);

                SqlParameter param4 = new SqlParameter();
                param4.ParameterName = "@Original_Balance";
                param4.Value = credit.Orignal_Balance;
                cmd.Parameters.Add(param4);

                SqlParameter param5 = new SqlParameter();
                param5.ParameterName = "@Loan_Type";
                param5.Value = credit.Loan_Type;
                cmd.Parameters.Add(param5);

                SqlParameter param6 = new SqlParameter();
                param6.ParameterName = "@Current_Creditor_Name";
                param6.Value = credit.Current_Creditor_Name;
                cmd.Parameters.Add(param6);


                SqlParameter param7 = new SqlParameter();
                param7.ParameterName = "@Current_Creditor_Account_number";
                param7.Value = credit.Current_Creditor_Account_No;
                cmd.Parameters.Add(param7);

                SqlParameter param10 = new SqlParameter();
                param10.ParameterName = "@Status";
                param10.Value = credit.Status;
                cmd.Parameters.Add(param10);


                SqlParameter param11 = new SqlParameter();
                param11.ParameterName = "@Balance_at_Settlement";
                param11.Value = credit.Balance_at_Settlement;
                cmd.Parameters.Add(param11);

                SqlParameter param8 = new SqlParameter();
                param8.ParameterName = "@Settlement_Type";
                param8.Value = credit.Settlement_Type;
                cmd.Parameters.Add(param8);



                SqlParameter param9 = new SqlParameter();
                param9.ParameterName = "@settlement_amount";
                param9.Value = credit.Settlement_Amount;
                cmd.Parameters.Add(param9);




                SqlParameter param12 = new SqlParameter();
                param12.ParameterName = "@fees_amount";
                param12.Value = credit.Fees_Amount;
                cmd.Parameters.Add(param12);


                SqlParameter param13 = new SqlParameter();
                param13.ParameterName = "@settlement_date";
                param13.Value = credit.Settlement_Date;
                cmd.Parameters.Add(param13);

                SqlParameter param14 = new SqlParameter();
                param14.ParameterName = "@settlement_creditor_Name";
                param14.Value = credit.Settlement_Creditor_Name;
                cmd.Parameters.Add(param14);



                SqlParameter param15 = new SqlParameter();
                param15.ParameterName = "@added_by";
                param15.Value = credit.AddedBy;
                cmd.Parameters.Add(param15);



                SqlParameter param16 = new SqlParameter();
                param16.ParameterName = "@added_date";
                param16.Value = credit.AddedDate;
                cmd.Parameters.Add(param16);

                SqlParameter param17 = new SqlParameter();
                param17.ParameterName = "@last_updated_by";
                param17.Value = credit.Last_Updatedby;
                cmd.Parameters.Add(param17);



                SqlParameter param18 = new SqlParameter();
                param18.ParameterName = "@last_updated_date";
                param18.Value = credit.Last_UpdatedDate;
                cmd.Parameters.Add(param18);

                SqlParameter param19 = new SqlParameter();
                param19.ParameterName = "@id";
                param19.Value = credit.Credit_Id;
                cmd.Parameters.Add(param19);

                cmd.ExecuteNonQuery();



            }
            catch (Exception exception)
            {
                System.Diagnostics.Trace.WriteLine("[CreditDao:UpdateCredit] Exception " + exception.StackTrace);
                returnString = IdProConstants.FAIL;
            }
            finally
            {
                ConnectionDao.closeDabaseEntities(cmd, rs);
            }

            return returnString;
        }


        public Credit getCreditById(long creditId)
        {
            //get Credit Object based on Id
            ConnectionDao ConnectionDao = new ConnectionDao();
            Credit credit = new Credit();
            SqlCommand cmd = null;
            SqlConnection conn = null;
            SqlDataReader rs = null;
            string query = "select * from credit where Credit_id=@id";
            try
            {
                conn = ConnectionDao.getConnection();
                cmd = ConnectionDao.getSqlCommandWithoutTransaction(query, conn);
                SqlParameter param1 = new SqlParameter();
                param1.ParameterName = "@id";
                param1.Value = creditId;
                cmd.Parameters.Add(param1);
                rs = cmd.ExecuteReader();
                if (rs.Read())
                {
                    credit.Account_Id = Convert.ToInt32(rs["Account_Id"]);
                    credit.Creditor_Name = (rs["Creditor_Name"].ToString().Trim());
                    credit.Account_Number = (rs["Account_Number"].ToString().Trim());
                    credit.Orignal_Balance = (float)rs["Orignal_Balance"];
                    credit.Loan_Type = (rs["Loan_Type"].ToString().Trim());
                    credit.Current_Creditor_Name = (rs["Current_Creditor_Name"].ToString().Trim());
                    credit.Current_Creditor_Account_No = (rs["Current_Creditor_Account_Number"].ToString().Trim());
                    credit.Status = (rs["Status"].ToString().Trim());
                    credit.Balance_at_Settlement = (float)rs["Balance_at_Settlement"];
                    credit.Settlement_Type = (rs["Settlement_Type"].ToString().Trim());
                    credit.Settlement_Amount = (float)rs["Settlement_Amount"];
                    credit.Fees_Amount = (float)rs["Fees_Amount"];
                    credit.Settlement_Date = Convert.ToDateTime(rs["Settlement_Date"]);
                    credit.Settlement_Creditor_Name = (rs["Settlement_Creditor_Name"].ToString().Trim());
                    credit.AddedBy = (rs["added_by"].ToString().Trim());
                    credit.AddedDate = Convert.ToDateTime(rs["Added_date"]);
                    credit.Last_Updatedby = (rs["Last_Updated_By"].ToString().Trim());
                    credit.Last_UpdatedDate = Convert.ToDateTime(rs["Last_Updated_date"]);
                }
                else
                {
                    credit = null;
                }
            }
            catch (Exception exception)
            {
                System.Diagnostics.Trace.WriteLine("[CreditDao:getcreditbyID] Exception " + exception.StackTrace);
                credit = null;
            }
            finally
            {
                ConnectionDao.closeConnection(conn);
                ConnectionDao.closeDabaseEntities(cmd, rs);
            }
            return credit;

        }


        public List<Credit> getCreditsByAccountID(long accountID)
        {

            Credit credit = new Credit();
            ConnectionDao connectionDao = new ConnectionDao();
            List<Credit> Creditlist = new List<Credit>();
            SqlCommand cmd = null;
            SqlConnection conn = null;
            SqlDataReader rs = null;

            string query = "select Credit_id from credit where Account_Id=@accountid";

            try
            {
                conn = connectionDao.getConnection();
                cmd = connectionDao.getSqlCommandWithoutTransaction(query, conn);
                SqlParameter param1 = new SqlParameter();
                param1.ParameterName = "@accountid";
                param1.Value = credit.Account_Id;
                cmd.Parameters.Add(param1);
                rs = cmd.ExecuteReader();
                while (rs.Read())
                {
                    credit.Credit_Id = Convert.ToInt32(rs["Credit_id"]);
                    Creditlist.Add(credit);
                }
                rs.Close();

            }
            catch (Exception exception)
            {
                System.Diagnostics.Trace.WriteLine("[CreditDao:GetList] Exception " + exception.StackTrace);
                credit = null;

            }
            finally
            {
                connectionDao.closeConnection(conn);
                connectionDao.closeDabaseEntities(cmd, rs);
            }

            return Creditlist;

            //get all the credit by account id

            //  first run query like-- select creditid from credits where account_id=@account_id

            //it will give you the list of creditidlike . In interating result set call    getCreditById(long creditId) and put result in list



         
        }

    }

}
