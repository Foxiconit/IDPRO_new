<%@ Page Title="" Language="C#" MasterPageFile="~/web/CSR/CustomerService.Master" AutoEventWireup="true"
    CodeBehind="Graduation.aspx.cs" Inherits="IDPRO.web.CSR.Graduation" %>

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
                                            <asp:RadioButtonList ID="rdb" runat="server" CssClass="radio inline" AutoPostBack="true"
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
                        <div class="span6">
                            <asp:UpdatePanel ID="update2" runat="server">
                                <ContentTemplate>
                                    <div class="row-fluid">
                                        <asp:Panel ID="pnlpayment" runat="server" Visible="false">
                                            <div class="span10 cs">
                                                <blockquote class="example-right">
                                                    <p>
                                                        Hello Mr(s). Last Name,<br />
                                                        I am calling to inform you that we will be graduating you from our program.<br />
                                                        We were able to settle all of your accounts and you are now free of all the debt
                                                        you listed in our program. We settled the accounts at __% of your listed balance.
                                                        You were able to finish the program in __ months as opposed to your estimated __
                                                        month program. (REMOVE IF PROGRAM COMPLETED IN EST. PROGRAM LENGTH) We will send
                                                        you an email once the graduation process has been completed and your account with
                                                        us is closed.<br />
                                                        You will be receiving a credit in the amount of $__.__, which is the amount remaining
                                                        in your GCS savings account. (REMOVE IF NO CREDIT AVAILABLE). I will connect you
                                                        over to one of our Graduation Representatives to finalize your Graduation. May I
                                                        place you on hold?
                                                    </p>
                                                </blockquote>
                                            </div>
                                            <div class="span10">
                                                <asp:Button ID="Button1" runat="server" PostBackUrl="~/web/CSR/Graduation-Step2.aspx" CssClass="btn btn-success submit" Text="Select" />
                                            </div>
                                        </asp:Panel>
                                    
                                        <asp:Panel ID="pnlNoans" runat="server" Visible="false">
                                            <div class="span10 cs">
                                                <blockquote class="example-right">
                                                    <p>
                                                        Mr. Customer, I am calling you with some great news! It is time for you to graduate
                                                        from the program! I need to speak with you to finalize this, so please call me at
                                                        [csr phone, xt] at your earliest convenience!
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
