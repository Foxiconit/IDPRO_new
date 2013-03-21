<%@ Page Title="" Language="C#" MasterPageFile="~/web/CSR/CustomerService.Master" AutoEventWireup="true"
    CodeBehind="Courtesy-Call-step1.aspx.cs" Inherits="IDPRO.web.CSR.Courtesy_Call_step1" %>

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
                                            <asp:RadioButtonList ID="rdb" runat="server" CssClass="radio inline" 
                                                RepeatDirection="Vertical" onselectedindexchanged="rdb_SelectedIndexChanged">
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
                            <%--<div class="span10 cs ">
                                <h6 style="padding-top: 50px;">
                                    Select</h6>
                                skkksmmms
                            </div>--%>
                            <asp:UpdatePanel ID="update2" runat="server">
                                <ContentTemplate>
                                    <div class="row-fluid">
                                        <asp:Panel ID="pnlaccountchange" runat="server" Visible="false">
                                            <div class="span10 cs">
                                                <blockquote class="example-right">
                                                    <p>
                                                        “Hello Mr(s). (Customer name) my name is (Customer Service Representative name)
                                                        and I am calling from Payday Loan Debt Assistance. I know you’ve been working with
                                                        (Senior Debt Consultant name), but I’m going to be taking over your account from
                                                        here and will be your Dedicated Customer Service Representative while you’re in
                                                        the program. My contact information is 800-670-1015 x715 or (yourname)@pdlda.com.
                                                        I’ve also sent this information by e-mail so look out for that and check your SPAM
                                                        folder just in case. Please feel free to call me with any questions you may have
                                                        and we’ll be in touch soon. Thank you.”
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
