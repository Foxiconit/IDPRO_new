<%@ Page Title="" Language="C#" MasterPageFile="~/web/CSR/CustomerService.Master" AutoEventWireup="true"
    CodeBehind="Courtesy-Call-step11.aspx.cs" Inherits="IDPRO.web.CSR.Courtesy_Call_step11" %>

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
                                        Hello Mr(s). (Customer name) my name is (Customer Service Representative Name) and
                                        I am calling from Payday Loan Debt Assistance. I know you’ve been working with (Senior
                                        Debt Consultant name), but I’m going to be taking over your account from here and
                                        will be your Dedicated Customer Service Representative while you’re in the program.
                                        Do you have any questions about he program?
                                    </p>
                                </blockquote>
                            </div>
                            <asp:UpdatePanel ID="update1" runat="server">
                                <ContentTemplate>
                                    <div class="row-fluid">
                                        <div class="span10 form-horizontal">
                                            <asp:RadioButtonList ID="rdb" runat="server" CssClass="radio inline" RepeatDirection="Vertical">
                                                <asp:ListItem Text="When will I get my first settlement?" Value="1" Selected="True" />
                                                <asp:ListItem Text="What do I do if my lenders call me?" Value="2" />
                                                <asp:ListItem Text="My lenders are already saying they done work with you; is that true?!" Value="3"></asp:ListItem>
                                            </asp:RadioButtonList>
                                            <br />
                                            <br />
                                            <asp:Button ID="Button1" runat="server" CssClass="btn btn-success submit" Text="Select"
                                                OnClick="Button1_Click" />
                                            <span style="float: right;"><b><a href="Courtesy-Call-step1.aspx">Back</a></b> </span>
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
                                                        It’s hard to say; we usually get them fairly quickly in the beginning, but the negotiations
                                                        process is organic, and sometimes it takes more time than expected. Know that we
                                                        are working to get you settlements as quickly as possible.
                                                    </p>
                                                </blockquote>
                                            </div>
                                        </asp:Panel>
                                        <asp:Panel ID="pnlaccountchange" runat="server" Visible="false">
                                            <div class="span10 cs">
                                                <blockquote class="example-right">
                                                    <p>
                                                        Ignore them; a lot of what gives your negotiator leverage to settle your accounts
                                                        is you being out of communication with your lenders. You can answer once if you
                                                        wish to let them know you are working with us, but expect that they will say that
                                                        the y do not work with us; in a vast majority of cases this is simply not true.
                                                        It’s really best to just ignore them.
                                                    </p>
                                                </blockquote>
                                            </div>
                                        </asp:Panel>
                                        <asp:Panel ID="pnlCourtesy3" runat="server" Visible="false">
                                            <div class="span10 cs">
                                                <blockquote class="example-right">
                                                    <p>
                                                        We hear this from a lot of customers, and in a vast majority of cases it is simply
                                                        not true; your lenders want to give you that impression because they know that if
                                                        we settle the account, they will likely get a lot less than if they settle with
                                                        you directly. We will let you know if a particular lender is unresponsive to our
                                                        attempts to settle.
                                                    </p><br />
                                                    <p>
                                                        My contact information is 800-670-1015 x715 or (yourname)@pdlda.com. I’ve also sent
                                                        this information by e-mail so look out for that and check your SPAM folder just
                                                        in case. Please know we are here to help, and if you have any questions or concerns
                                                        please feel free to contact me. Thank you and have a great day!
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
