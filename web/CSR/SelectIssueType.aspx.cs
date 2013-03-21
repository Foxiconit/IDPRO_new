using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IDPRO
{
    public partial class SelectIssueType : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            switch (rdb.SelectedItem.Text)
            {
                case "Payments":
                    pnlpayment.Visible = true;
                    pnlaccountchange.Visible = false;
                    pnllenders.Visible = false;
                    pnlescalation.Visible = false;
                    pnlfsk.Visible = false;

                   // Response.Redirect("PaymentsIssue.aspx");
                    break;
                case "Account Update/Changes":
                   pnlpayment.Visible = false;
                    pnlaccountchange.Visible = true;
                    pnllenders.Visible = false;
                    pnlescalation.Visible = false;
                    pnlfsk.Visible = false;
                    
                    break;
                case "Lenders":
                    pnlpayment.Visible = false;
                    pnlaccountchange.Visible = false;
                    pnllenders.Visible = true;
                    pnlescalation.Visible = false;
                    pnlfsk.Visible = false;
                    break;
                case "ESCALATION/CANCEL REQUESTS":
                     pnlpayment.Visible = false;
                    pnlaccountchange.Visible = false;
                    pnllenders.Visible = false;
                    pnlescalation.Visible = true;
                    pnlfsk.Visible = false;
                    break;
                default:
                    pnlpayment.Visible = false;
                    pnlaccountchange.Visible = false;
                    pnllenders.Visible = false;
                    pnlescalation.Visible = false;
                    pnlfsk.Visible = true;
                    break;
            }
            

            //if (rdb.SelectedItem.Text == "Payments")
            //{
            //    Response.Redirect("PaymentsIssue.aspx");

            //}
            //else if (rdb.SelectedItem.Text == "Account Update/Changes")
            //{
            //    Response.Redirect("AccountUpdateChanges.aspx");
            //}
            //else if (rdb.SelectedItem.Text == "Lenders")
            //{
            //    Response.Redirect("LendersIssue.aspx");
            //}
            //else if (rdb.SelectedItem.Text == "ESCALATION/CANCEL REQUESTS")
            //{
            //    Response.Redirect("EscalationCancelRequests.aspx");
            //}
            //else
            //{
            //    Response.Redirect("FskIdProIssue.aspx");
            //}
        }
        protected void btnpayment_Click(object sender, EventArgs e)
        {
            switch (rdbPayment.SelectedItem.Text)
            {
                case "Withdrawal":
                    Response.Redirect("PaymentsWithdrawal-step1.aspx");
                    break;
                case "Modify Drafts (All)":
                    Response.Redirect("PaymentModify-all-step1.aspx");
                    break;
                case "Reschedule NSF":
                    Response.Redirect("PaymentReschedule-step1.aspx");
                    break;
                default:
                    Response.Redirect("PaymentModify-step1.aspx");
                    break;
            }
           

        }

        protected void btnaccountchange_Click(object sender, EventArgs e)
        {
            switch (rdbAccount.SelectedItem.Text)
            {
                case "Account Information Change":
                    Response.Redirect("AccountInformationChange.aspx");
                    break;
                case "RDAA/Authorization to Draft":
                    Response.Redirect("RDAA-Step1.aspx");
                    break;
                case "Account Update":
                    Response.Redirect("AccountUpdate.aspx");
                    break;
                case "Check In Call":
                    Response.Redirect("CheckIn-Call.aspx");
                    break;
                case "Courtesy Call":
                    Response.Redirect("Courtesy-Call-step1.aspx");
                    break;
                case "Graduation":
                    Response.Redirect("Graduation.aspx");
                    break;
                default:
                    Response.Redirect("ProofResidency-Step1.aspx");
                    break;
            }  
          
          
        }

        protected void btnlenders_Click(object sender, EventArgs e)
        {
            switch (rbtnlender.SelectedItem.Text)
            {
                case "Add Lender":
                    Response.Redirect("Lenders-AddLenderStep1.aspx");
                    break;
                case "Creditors Debiting Customer":
                    Response.Redirect("Lenders-DebitingStep1.aspx");
                    break;
                case "Creditors Harassing References":
                    Response.Redirect("Lenders-HarassingRef-Step1.aspx");
                    break;
                case "Creditors Harassing Customer":
                    Response.Redirect("Lenders-HarassingCust-Step1.aspx");
                    break;
                case "Creditor Threatening Legal Action":
                    Response.Redirect("Lenders-Threatening-Step1.aspx");
                    break;
                case "Validate Lender":
                    Response.Redirect("Lender-Validate.aspx");
                    break;
                case "Validation of Debt":
                    Response.Redirect("Lenders-ValidationD-Step1.aspx");
                    break;
                case "NCA":
                    Response.Redirect("Lenders-NCA.aspx");
                    break;
                case "Settlement Approvals (CA, AL)":
                    Response.Redirect("Lenders-Settlement.aspx");
                    break;
                default:
                    Response.Redirect("ChangeLender-Step1.aspx");
                    break;
            }

        }

        protected void btnescalation_Click(object sender, EventArgs e)
        {
            switch (rdbEscalatione.SelectedItem.Text)
            {
                case "Cancel Request":
                    Response.Redirect("EscalationCancel-Step1.aspx");
                    break;
                case "Upset Customer":
                    Response.Redirect("EscalationUpsetCust-Step1.aspx");
                    break;
                case "Refund NSF Fees":
                    Response.Redirect("EscalationRefundNSF.aspx");
                    break;
                default:
                    Response.Redirect("EscalationCancel-Step1.aspx");
                    break;
            }
        }

        protected void btnfsk_Click(object sender, EventArgs e)
        {
            switch (rdbFSK.SelectedItem.Text)
            {
                case "Cancel FSK":
                    Response.Redirect("FSKIDcancel-step1.aspx");
                    break;
                case "Track FSK":
                    Response.Redirect("FSKIDTrack.aspx");
                    break;
            }
        }

        protected void rdb_SelectedIndexChanged(object sender, EventArgs e)
        {
            switch (rdb.SelectedItem.Text)
            {
                case "Payments":
                    pnlpayment.Visible = true;
                    pnlaccountchange.Visible = false;
                    pnllenders.Visible = false;
                    pnlescalation.Visible = false;
                    pnlfsk.Visible = false;

                    // Response.Redirect("PaymentsIssue.aspx");
                    break;
                case "Account Update/Changes":
                    pnlpayment.Visible = false;
                    pnlaccountchange.Visible = true;
                    pnllenders.Visible = false;
                    pnlescalation.Visible = false;
                    pnlfsk.Visible = false;

                    break;
                case "Lenders":
                    pnlpayment.Visible = false;
                    pnlaccountchange.Visible = false;
                    pnllenders.Visible = true;
                    pnlescalation.Visible = false;
                    pnlfsk.Visible = false;
                    break;
                case "ESCALATION/CANCEL REQUESTS":
                    pnlpayment.Visible = false;
                    pnlaccountchange.Visible = false;
                    pnllenders.Visible = false;
                    pnlescalation.Visible = true;
                    pnlfsk.Visible = false;
                    break;
                default:
                    pnlpayment.Visible = false;
                    pnlaccountchange.Visible = false;
                    pnllenders.Visible = false;
                    pnlescalation.Visible = false;
                    pnlfsk.Visible = true;
                    break;
            }
        }
    }
}