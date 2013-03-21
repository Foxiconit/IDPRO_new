<%@ Page Title="" Language="C#" MasterPageFile="~/web/CSR/CustomerService.Master" AutoEventWireup="true"
    CodeBehind="Lenders-ValidationD-Step11.aspx.cs" Inherits="IDPRO.web.CSR.Lenders_ValidationD_Step11" %>

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
                                        Mr. Customer, this means that we will not be able to settle this account for you,
                                        and the loan will go unsatisfied. Are you sure you don’t want us to raise the balance?
                                    </p>
                                </blockquote>
                            </div>
                            <asp:UpdatePanel ID="update1" runat="server">
                                <ContentTemplate>
                                    <div class="row-fluid">
                                        <div class="span10 form-horizontal">
                                            <asp:RadioButtonList ID="rdb" runat="server" AutoPostBack="true" CssClass="radio inline"
                                                RepeatDirection="Vertical" OnSelectedIndexChanged="rdb_SelectedIndexChanged">
                                                <asp:ListItem Text="I’m sure!" Value="1" Selected="True" />
                                                <asp:ListItem Text="Ok, change it!" Value="2" />
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
                                                        I understand, Mr. Customer. I will have the loan removed from the program.
                                                    </p>
                                                </blockquote>
                                            </div>
                                        </asp:Panel>
                                        <asp:Panel ID="pnlno1" runat="server" Visible="false">
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
                                            <asp:Button ID="btnrecording" CssClass="btn btn-success submit" OnClick="btnrecording_Click"
                                                runat="server" Text="Begin recording conversation" /><br />
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
