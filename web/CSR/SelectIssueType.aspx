<%@ Page Title="" Language="C#" MasterPageFile="~/web/CSR/CustomerService.Master"
    AutoEventWireup="true" CodeBehind="SelectIssueType.aspx.cs" Inherits="IDPRO.SelectIssueType" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
                    <div class="row-fluid">
                        <div class="span1">
                        </div>
                        <div class="span5">
                            <div class="span10 cs">
                                <blockquote class="example-right">
                                    <p>
                                        Thank You. I Located Your Record. How May I Help You Today?
                                    </p>
                                </blockquote>
                            </div>
                            <div class="row-fluid">
                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                    <ContentTemplate>
                                        <div class="span10 form-horizontal">
                                            <asp:RadioButtonList ID="rdb" runat="server" AutoPostBack="true" CssClass="radio inline"
                                                RepeatDirection="Vertical" OnSelectedIndexChanged="rdb_SelectedIndexChanged">
                                                <asp:ListItem Text="Payments" Value="1" Selected="True" />
                                                <asp:ListItem Text="Account Update/Changes" Value="2" />
                                                <asp:ListItem Text="Lenders" Value="3" />
                                                <asp:ListItem Text="ESCALATION/CANCEL REQUESTS" Value="4" />
                                                <asp:ListItem Text="FSK / IDPRO" Value="5" />
                                            </asp:RadioButtonList>
                                            <br />
                                            <br />
                                            <asp:Button ID="Button1" runat="server" CssClass="btn btn-success submit" Text="Select"
                                                OnClick="Button1_Click" />
                                            <span style="float: right;"><b><a href="CustomerService.aspx">Back</a></b> </span>
                                        </div>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                            </div>
                        </div>
                        <div class="span5">
                            <%--<div class="span10 cs ">
                                <h6 style="padding-top: 50px;">
                                    Select</h6>
                                skkksmmms
                            </div>--%>
                            <asp:UpdatePanel ID="update2" runat="server">
                                <ContentTemplate>
                                    <div class="row-fluid">
                                        <asp:Panel ID="pnlpayment" runat="server" Visible="true">
                                            <div class="span12">
                                                <h6 style="padding-top: 104px; padding-left: 135px;">
                                                    Select Specific Issue</h6>
                                            </div>
                                            <div class="span10 form-horizontal">
                                                <asp:RadioButtonList ID="rdbPayment" runat="server" CssClass="radio inline" RepeatDirection="Vertical">
                                                    <asp:ListItem Text="Withdrawal" Selected="True" Value="1" />
                                                    <asp:ListItem Text="Modify Drafts (All)" Value="2" />
                                                    <asp:ListItem Text="Modify Drafts (Single, Multiple)" Value="3" />
                                                    <asp:ListItem Text="Reschedule NSF" Value="4" />
                                                </asp:RadioButtonList>
                                                <br />
                                                <br />
                                                <asp:Button ID="btnpayment" runat="server" CssClass="btn btn-success submit" Text="Select"
                                                    OnClick="btnpayment_Click" />
                                                <br />
                                                <br />
                                            </div>
                                        </asp:Panel>
                                        <asp:Panel ID="pnlaccountchange" runat="server" Visible="false">
                                            <div class="span12">
                                                <h6 style="padding-top: 104px; padding-left: 135px;">
                                                    Select Specific Issue</h6>
                                            </div>
                                            <div class="span10 form-horizontal">
                                                <asp:RadioButtonList ID="rdbAccount" runat="server" CssClass="radio inline" RepeatDirection="Vertical">
                                                    <asp:ListItem Text="Courtesy Call" Value="1" Selected="True" />
                                                    <asp:ListItem Text="Check In Call" Value="2" />
                                                    <asp:ListItem Text="Account Update" Value="3" />
                                                    <asp:ListItem Text="Account Information Change" Value="4" />
                                                    <asp:ListItem Text="Proof of Residency" Value="5" />
                                                    <asp:ListItem Text="RDAA/Authorization to Draft" Value="6" />
                                                    <asp:ListItem Text="Graduation" Value="7" />
                                                </asp:RadioButtonList>
                                                <br />
                                                <br />
                                                <asp:Button ID="btnaccountchange" runat="server" CssClass="btn btn-success submit"
                                                    Text="Select" OnClick="btnaccountchange_Click" />
                                                <br />
                                                <br />
                                            </div>
                                        </asp:Panel>
                                        <asp:Panel ID="pnllenders" runat="server" Visible="false">
                                            <div class="span12">
                                                <h6 style="padding-top: 104px; padding-left: 135px;">
                                                    Select Specific Issue</h6>
                                            </div>
                                            <div class="span10 form-horizontal">
                                                <asp:RadioButtonList ID="rbtnlender" runat="server" CssClass="radio inline" RepeatDirection="Vertical">
                                                    <asp:ListItem Text="Add Lender" Value="1" Selected="True" />
                                                    <asp:ListItem Text="Change/Remove Lender" Value="2" />
                                                    <asp:ListItem Text="Validate Lender" Value="3" />
                                                    <asp:ListItem Text="Validation of Debt" Value="4" />
                                                    <asp:ListItem Text="NCA" Value="5" />
                                                    <asp:ListItem Text="Creditors Debiting Customer" Value="6" />
                                                    <asp:ListItem Text="Creditor Threatening Legal Action" Value="7" />
                                                    <asp:ListItem Text="Creditors Harassing Customer" Value="8" />
                                                    <asp:ListItem Text="Creditors Harassing References" Value="9" />
                                                    <asp:ListItem Text="Settlement Approvals (CA, AL)" Value="10" />
                                                </asp:RadioButtonList>
                                                <br />
                                                <br />
                                                <asp:Button ID="btnlenders" runat="server" CssClass="btn btn-success submit" Text="Select"
                                                    OnClick="btnlenders_Click" />
                                                <br />
                                                <br />
                                            </div>
                                        </asp:Panel>
                                        <asp:Panel ID="pnlescalation" runat="server" Visible="false">
                                            <div class="span12">
                                                <h6 style="padding-top: 104px; padding-left: 135px;">
                                                    Select Specific Issue</h6>
                                            </div>
                                            <div class="span10 form-horizontal">
                                                <asp:RadioButtonList ID="rdbEscalatione" runat="server" CssClass="radio inline" RepeatDirection="Vertical">
                                                    <asp:ListItem Text="BBB Complaint" Value="1" Selected="True" />
                                                    <asp:ListItem Text="Cancel Request" Value="2" />
                                                    <asp:ListItem Text="Upset Customer" Value="3" />
                                                    <asp:ListItem Text="Refund NSF Fees" Value="4" />
                                                </asp:RadioButtonList>
                                                <br />
                                                <br />
                                                <asp:Button ID="btnescalation" runat="server" CssClass="btn btn-success submit" Text="Select"
                                                    OnClick="btnescalation_Click" />
                                                <br />
                                                <br />
                                            </div>
                                        </asp:Panel>
                                        <asp:Panel ID="pnlfsk" runat="server" Visible="false">
                                            <div class="span12">
                                                <h6 style="padding-top: 104px; padding-left: 135px;">
                                                    Select Specific Issue</h6>
                                            </div>
                                            <div class="span10 form-horizontal">
                                                <asp:RadioButtonList ID="rdbFSK" runat="server" CssClass="radio inline" RepeatDirection="Vertical">
                                                    <asp:ListItem Text="Cancel FSK" Value="1" Selected="True" />
                                                    <asp:ListItem Text="Refund FSK" Value="2" />
                                                    <asp:ListItem Text="Track FSK" Value="3" />
                                                    <asp:ListItem Text="Cancel ID Pro" Value="4" />
                                                    <asp:ListItem Text="ID Pro Cancel/Refund" Value="5" />
                                                </asp:RadioButtonList>
                                                <br />
                                                <br />
                                                <asp:Button ID="btnfsk" runat="server" CssClass="btn btn-success submit" Text="Select"
                                                    OnClick="btnfsk_Click" />
                                                <br />
                                                <br />
                                            </div>
                                        </asp:Panel>
                                    </div>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </div>
                    </div>
               
</asp:Content>
