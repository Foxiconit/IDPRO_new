<%@ Page Title="" Language="C#" MasterPageFile="~/web/CSR/CustomerService.Master" AutoEventWireup="true"
    CodeBehind="Lenders-Settlement.aspx.cs" Inherits="IDPRO.web.CSR.Lenders_Settlement" %>

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
                                                        I am calling from Payday Loan Debt Assistance. I have some great news! I am contacting
                                                        you to let you know we obtained a settlement with [lender]. Per your state’s regulations,
                                                        I am required to obtain your verbal or written consent to process this settlement.
                                                        In a moment, I will begin recording our conversation; is that ok?
                                                    </p>
                                                </blockquote>
                                            </div>
                                        </asp:Panel>
                                        <asp:Panel ID="pnlCourtesy3" runat="server" Visible="false">
                                            <div class="span10 cs">
                                                <blockquote class="example-right">
                                                    <p>
                                                        Mr.Customer, I am calling you with great news! We were able to settle with [Lender
                                                        Name]. Per regulations in your state, I am required to obtain your verbal or written
                                                        approval to move forward with the settlement. I am sending you an email with the
                                                        details of the settlement; please reply to this email with the words “I agree o
                                                        this settlement”. Also, feel free to call me at [extension] with any questions!
                                                        Again, congratualtions!
                                                    </p>
                                                </blockquote>
                                            </div>
                                        </asp:Panel>
                                        <asp:Panel ID="pnlno1" runat="server" Visible="false">
                                            <div class="span10 cs">
                                                <blockquote class="example-right">
                                                    <p>
                                                        Thank you! I will let you know the details first. As I said, we settled with [Lender
                                                        name]; the balance at the time of settlement was [balance]; we were able to settle
                                                        for [settlement amount]. I will begin recording our conversation now.
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
                                                        to reply. Thank you! As I said a moment ago, we settled with [Lender name]; the
                                                        balance at the time of settlement was [balance]; we were able to settle for [settlement
                                                        amount]. Do you agree with this settlement? Allow customer to reply.
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
                                                        Thank you; please wait a moment while I process this approval for you.
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
                                                        Thank you for waiting; we will process his settlement for you. Again, congratulations!
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
