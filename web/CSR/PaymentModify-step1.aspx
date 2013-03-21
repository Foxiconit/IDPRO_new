<%@ Page Title="" Language="C#" MasterPageFile="~/web/CSR/CustomerService.Master" AutoEventWireup="true"
    CodeBehind="PaymentModify-step1.aspx.cs" Inherits="IDPRO.web.CSR.PaymentModify_step1" %>

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
                                        Ms. Customer, you are requesting to modify a future draft. I will be happy to help
                                        you with this. Let me take a look at your account to see if you are currently on
                                        any payment plans with lenders.
                                    </p>
                                </blockquote>
                            </div>
                            <asp:UpdatePanel ID="update1" runat="server">
                                <ContentTemplate>
                                    <div class="row-fluid">
                                        <div class="span10 form-horizontal">
                                            <asp:RadioButtonList ID="rdb" runat="server" CssClass="radio inline" RepeatDirection="Vertical">
                                                <asp:ListItem Text="Customer is on Payment Plan" Value="1" Selected="True" />
                                                <asp:ListItem Text="Customer not on Payment Plan" Value="2" />
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
                                                        Mr. Customer, you are on a payment plan with XYZ Lender. Changing your draft amount
                                                        or date could cause you to fall behind and default on this payment plan. Your balance
                                                        would reset and you would lose all monies paid to them so far.
                                                    </p>
                                                </blockquote>
                                            </div>
                                        </asp:Panel>
                                        <asp:Panel ID="pnlNo" runat="server" Visible="false">
                                            <div class="span10 cs">
                                                <blockquote class="example-right">
                                                    <p>
                                                        Mr. Customer, you have made the right choice. May I help you with anything else?
                                                    </p>
                                                </blockquote>
                                            </div>
                                            <div class="span10 form-horizontal">
                                                <asp:RadioButtonList ID="rdbconfirm" runat="server" CssClass="radio inline" RepeatDirection="Vertical">
                                                    <asp:ListItem Text="Yes" Selected="True" Value="1" />
                                                    <asp:ListItem Text="No" Value="2" />
                                                </asp:RadioButtonList>
                                                <br />
                                                <br />
                                                <asp:Button ID="btncon" runat="server" CssClass="btn btn-success submit" Text="Select"
                                                    OnClick="btncon_Click" />
                                                <br />
                                                <br />
                                            </div>
                                        </asp:Panel>
                                        <asp:Panel ID="pnlaccountchange" runat="server" Visible="false">
                                            <div class="span10 form-horizontal">
                                                <asp:RadioButtonList ID="rdbSure" runat="server" CssClass="radio inline" RepeatDirection="Vertical">
                                                    <asp:ListItem Text="Customer insists" Selected="True" Value="1" />
                                                    <asp:ListItem Text="Customer Declines" Value="2" />
                                                </asp:RadioButtonList>
                                                <br />
                                                <br />
                                                <asp:Button ID="btnyes" runat="server" CssClass="btn btn-success submit" Text="Select"
                                                    OnClick="btnyes_Click" />
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
