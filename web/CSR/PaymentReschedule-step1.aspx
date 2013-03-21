<%@ Page Title="" Language="C#" MasterPageFile="~/web/CSR/CustomerService.Master" AutoEventWireup="true"
    CodeBehind="PaymentReschedule-step1.aspx.cs" Inherits="IDPRO.web.CSR.PaymentReschedule_step1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     
                    <div class="row-fluid">
                        <div class="span1">
                        </div>
                        <div class="span5">
                            <%-- <div class="span10 cs">
                                <blockquote class="example-right">
                                    <p>
                                        Hello Mr(s). (Customer name) my name is (Customer Service Representative Name) and
                                        I am calling from Payday Loan Debt Assistance. I know you’ve been working with (Senior
                                        Debt Consultant name), but I’m going to be taking over your account from here and
                                        will be your Dedicated Customer Service Representative while you’re in the program.
                                        Do you have any questions about he program?
                                    </p>
                                </blockquote>
                            </div>--%>
                            <asp:UpdatePanel ID="update1" runat="server">
                                <ContentTemplate>
                                    <div class="row-fluid">
                                        <div class="span10 form-horizontal">
                                            <asp:RadioButtonList ID="rdb" runat="server" AutoPostBack="true" CssClass="radio inline"
                                                RepeatDirection="Vertical" OnSelectedIndexChanged="rdb_SelectedIndexChanged">
                                                <asp:ListItem Text="Customer Answers" Value="1" Selected="True" />
                                                <asp:ListItem Text="No Answer" Value="2" />
                                            </asp:RadioButtonList>
                                            <br />
                                            <br />
                                             <asp:Button ID="Button1" runat="server" CssClass="btn btn-success submit" Text="Select"
                                                OnClick="Button1_Click" />
                                            <span style="float: right;"><b><a href="SelectIssueType.aspx">Back</a></b> </span>
                                        </div>
                                    </div>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </div>
                        <div class="span5">
                            <asp:UpdatePanel ID="update2" runat="server">
                                <ContentTemplate>
                                    <div class="row-fluid">
                                        <asp:Panel ID="pnlpayment" runat="server" Visible="false">
                                            <div class="span10 cs">
                                                <blockquote class="example-right">
                                                    <p>
                                                        Mr. Customer, this is [csr name] from Payday Loan Debt Assistance. I am contacting
                                                        you because a recent payment was returned to us. We need to get this rescheduled
                                                        to get your program back on track and continue settling your debt, so please call
                                                        me at [csr ph, xt] as soon as possible. Thank you!
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
