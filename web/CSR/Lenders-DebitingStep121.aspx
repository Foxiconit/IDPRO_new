<%@ Page Title="" Language="C#" MasterPageFile="~/web/CSR/CustomerService.Master" AutoEventWireup="true"
    CodeBehind="Lenders-DebitingStep121.aspx.cs" Inherits="IDPRO.web.CSR.Lenders_DebitingStep121" %>

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
                                        Was the check paid?
                                    </p>
                                </blockquote>
                            </div>
                            <asp:UpdatePanel ID="update1" runat="server">
                                <ContentTemplate>
                                    <div class="row-fluid">
                                        <div class="span10 form-horizontal">
                                            <asp:RadioButtonList ID="rdb" runat="server" CssClass="radio inline" RepeatDirection="Vertical">
                                                <asp:ListItem Text="Yes" Value="1" Selected="True" />
                                                <asp:ListItem Text="No" Value="2" />
                                            </asp:RadioButtonList>
                                            <br />
                                            <br />
                                            <asp:Button ID="Button1" runat="server" CssClass="btn btn-success submit" Text="Select"
                                                OnClick="Button1_Click" />
                                            <span style="float: right;"><b><a href="Lenders-DebitingStep12.aspx">Back</a></b>
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
                                                        I understand. At this point, the lender has been paid and should be removed from
                                                        the program. If you have other storefront loans secured by checks, you may experience
                                                        this same problem until the account is closed.
                                                    </p>
                                                </blockquote>
                                            </div>
                                            <div class="span10 form-horizontal">
                                            <br />
                                                <asp:Button ID="btnyes" runat="server" CssClass="btn btn-success submit" Text="Remove Lender"
                                                    OnClick="btnyes_Click" />
                                                <br />
                                                <br />
                                            </div>
                                        </asp:Panel>
                                        <asp:Panel ID="pnlCourtesy3" runat="server" Visible="false">
                                            <div class="span10 cs">
                                                <blockquote class="example-right">
                                                    <p>
                                                        I understand. You may continue to experience this problem with this and other loans
                                                        secured by checks until the account is closed or the debt is settled. I know that
                                                        is frustrating, which is why it may be a good idea to open a new account at a new
                                                        bank for your direct deposit/paycheck. We will try to settle this debt as soon as
                                                        possible, but please remember sometimes the negotiations process takes time.
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
