<%@ Page Title="" Language="C#" MasterPageFile="~/web/CSR/CustomerService.Master" AutoEventWireup="true"
    CodeBehind="Lenders-ValidationD-Step1.aspx.cs" Inherits="IDPRO.web.CSR.Lenders_ValidationD_Step1" %>

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
                                                <asp:ListItem Text="No Thank You" Value="2" />
                                            </asp:RadioButtonList>
                                            <br />
                                            <br />
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
                                                        Hello Mr(s). (Customer name) my name is (Customer Service Representative Name) and
                                                        I am calling from Payday Loan Debt Assistance. I am calling you because your loan
                                                        with [lender] was listed for [listed balance], and when we reached out to the lender
                                                        the balance we verified at the time of enrollment would have been [validated debt
                                                        amount]. We need your approval to raise the balance though.
                                                    </p>
                                                </blockquote>
                                            </div>
                                        </asp:Panel>
                                        <asp:Panel ID="pnlno1" runat="server" Visible="false">
                                            <div class="span10 cs">
                                                <blockquote class="example-right">
                                                    <p>
                                                        Mr.Customer, I am calling you regarding an urgent matter with [Lender Name]. We
                                                        need to speak with you as soon as possible, so please contact me at [csr xt]. I
                                                        will also be sending an email to you regarding this matter, so please be sure to
                                                        check there as well.
                                                    </p>
                                                </blockquote>
                                            </div>
                                            <div class="span10 cs">
                                                <blockquote class="example-right">
                                                    <p>
                                                        Thank you! I also want to let you know if will likely cause us to add drafts onto
                                                        the end of the program, or raise your draft amount if necessary, to account for
                                                        this change in balance. I will begin recording our conversation.
                                                    </p>
                                                </blockquote>
                                            </div>
                                        </asp:Panel>
                                        <asp:Panel ID="pnlaccountchange" runat="server" Visible="false">
                                            <div class="span10 form-horizontal">
                                                <asp:RadioButtonList ID="rdbSure" runat="server" CssClass="radio inline" RepeatDirection="Vertical">
                                                    <asp:ListItem Text="Absolutely!" Selected="True" Value="1" />
                                                </asp:RadioButtonList>
                                                <br />
                                                <br />
                                                <asp:Button ID="btnrecording" CssClass="btn btn-success submit" OnClick="btnrecording_Click"
                                                    runat="server" Text="Begin recording conversation" /><br />
                                            </div>
                                        </asp:Panel>
                                        <asp:Panel ID="pnlNo" runat="server" Visible="false">
                                            <div class="span10 cs">
                                                <blockquote class="example-right">
                                                    <p>
                                                        Mr. Customer, I have started recording our conversation. May I have your first and
                                                        last name, and the last four digits of your social security number? Allow customer
                                                        to reply. Thank you! As I said a moment ago, we will be raising your balance from
                                                        [old balance] to [new balance]. Do you agree with this change? Allow customer to
                                                        reply.
                                                    </p>
                                                </blockquote>
                                            </div>
                                            <br />
                                            <br />
                                            <asp:Button ID="Button1" CssClass="btn btn-success submit" OnClick="Button1_Click"
                                                runat="server" Text="Stop recording conversation" /><br />
                                        </asp:Panel>
                                        <asp:Panel ID="pnlstop" runat="server" Visible="false">
                                            <div class="span10 cs">
                                                <blockquote class="example-right">
                                                    <p>
                                                        Thank you; please wait a moment while I process this approval for you
                                                    </p>
                                                </blockquote>
                                            </div>
                                            <div class="span10 form-horizontal">
                                                <br />
                                                <asp:TextBox ID="txtdate" runat="server" placeholder="Date"></asp:TextBox><br />
                                                <br />
                                                <asp:TextBox ID="txtTime" runat="server" placeholder="Time"></asp:TextBox><br />
                                                <br />
                                                <asp:TextBox ID="txtPhn" runat="server" placeholder="Phone Number Dialed"></asp:TextBox><br />
                                                <br />
                                                <asp:TextBox ID="txtCSR" runat="server" placeholder="CSR Extension"></asp:TextBox><br />
                                                <br />
                                                <asp:TextBox ID="txtlendername" runat="server" placeholder="Lender Name"></asp:TextBox><br />
                                                <br />
                                            </div>
                                            <div class="span10 cs">
                                                <blockquote class="example-right">
                                                    <p>
                                                        Thank you for waiting; we will process this change for you. I will call you to let
                                                        you know how many drafts are added/how much our draft goes up.
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
