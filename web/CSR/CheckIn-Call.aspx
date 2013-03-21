<%@ Page Title="" Language="C#" MasterPageFile="~/web/CSR/CustomerService.Master" AutoEventWireup="true"
    CodeBehind="CheckIn-Call.aspx.cs" Inherits="IDPRO.web.CSR.CheckIn_Call" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
                    <div class="row-fluid">
                        <div class="span1">
                        </div>
                        <div class="span5">
                            <%--   <div class="span10 cs">
                                <blockquote class="example-right">
                                    <p>
                                        I understand. Let me get a cancellation manager for you!
                                    </p>
                                </blockquote>
                            </div>--%>
                            <asp:UpdatePanel ID="update1" runat="server">
                                <ContentTemplate>
                                    <div class="row-fluid">
                                        <div class="span10 form-horizontal">
                                            <asp:RadioButtonList ID="rdb" runat="server" CssClass="radio inline" RepeatDirection="Vertical">
                                                <asp:ListItem Text="Customer Answers" Value="1" Selected="True" />
                                                <asp:ListItem Text="No Answer" Value="2" />
                                            </asp:RadioButtonList>
                                            <br />
                                            <br />
                                            <asp:Button ID="Button1" runat="server" CssClass="btn btn-success submit" Text="Select"
                                                OnClick="Button1_Click" />
                                            <span style="float: right;"><b><a href="SelectIssueType.aspx">Back</a></b>
                                            </span>
                                        </div>
                                    </div>
                                </ContentTemplate>
                            </asp:UpdatePanel>
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
                                        <asp:Panel ID="pnlpayment" runat="server" Visible="false">
                                            <div class="span10 cs">
                                                <blockquote class="example-right">
                                                    <p>
                                                        Hello Mr. (Customer name) my name is (your name) and I am calling from Payday Loan
                                                        Debt Assistance, just to touch base and update you where you are in the program.
                                                        <ul>
                                                            <li>X out of z drafts have successfully cleared </li>
                                                            <li>We have settled with x lenders
                                                                <ul>
                                                                    <li>ABC</li>
                                                                    <li>BCD</li>
                                                                    <li>CDE</li>
                                                                </ul>
                                                            </li>
                                                            <li>We are still negotiating with your remaining lenders
                                                                <ul>
                                                                    <li>DEF</li>
                                                                    <li>EFG</li>
                                                                    <li>FGH</li>
                                                                </ul>
                                                            </li>
                                                        </ul>
                                                        Do you have any questions for me about your program?
                                                    </p>
                                                </blockquote>
                                            </div>
                                        </asp:Panel>
                                        <asp:Panel ID="pnlaccountchange" runat="server" Visible="false">
                                            <div class="span10 cs">
                                                <blockquote class="example-right">
                                                    <p>
                                                        Hello Mr(s). (Customer name) my name is (your name) and I am calling from Payday
                                                        Loan Debt Assistance to touch base with you. I see that there has been some time
                                                        since we last spoke and I wanted to provide you with an update on your account.
                                                        Currently we are in the negotiation process and waiting to see on which account
                                                        we get correspondence to finalize a settlement. If you have any questions or concerns
                                                        you may give me a call. My phone number is 800-670-1015 ext. XXX.
                                                    </p>
                                                </blockquote>
                                            </div>
                                        </asp:Panel>
                                    </div>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </div>
                    </div>
               
</asp:Content>
