<%@ Page Title="" Language="C#" MasterPageFile="~/web/CSR/CustomerService.Master" AutoEventWireup="true"
    CodeBehind="PaymentModify-step11-11.aspx.cs" Inherits="IDPRO.web.CSR.PaymentModify_step11_11" %>

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
                                        Ms. Customer, we do not recommend pushing payments to the end of the program. Can
                                        you at least make a payment of [1/2 payment amount] with one of your next drafts?
                                    </p>
                                </blockquote>
                            </div>--%>
                            <asp:UpdatePanel ID="update1" runat="server">
                                <ContentTemplate>
                                    <div class="row-fluid">
                                        <div class="span10 form-horizontal">
                                            <div class="span12">
                                                <div class="control-group">
                                                    <label class="control-label" for="inputEmail">
                                                        Alternate Draft Date</label>
                                                    <div class="controls">
                                                        <div class="bfh-datepicker" data-format="y-m-d" data-date="2013-01-01">
                                                            <div class="input-prepend bfh-datepicker-toggle" data-toggle="bfh-datepicker">
                                                                <span class="add-on"><i class="icon-calendar"></i></span>
                                                                <asp:TextBox ID="TextBox5" runat="server" CssClass="span12"></asp:TextBox>
                                                            </div>
                                                            <div class="bfh-datepicker-calendar">
                                                                <table class="calendar table table-bordered">
                                                                    <thead>
                                                                        <tr class="months-header">
                                                                            <th class="month" colspan="4">
                                                                                <a class="previous" href="#"><i class="icon-chevron-left"></i></a><span></span><a
                                                                                    class="next" href="#"><i class="icon-chevron-right"></i></a>
                                                                            </th>
                                                                            <th class="year" colspan="3">
                                                                                <a class="previous" href="#"><i class="icon-chevron-left"></i></a><span></span><a
                                                                                    class="next" href="#"><i class="icon-chevron-right"></i></a>
                                                                            </th>
                                                                        </tr>
                                                                        <tr class="days-header">
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody>
                                                                    </tbody>
                                                                </table>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <asp:Button ID="Button1" runat="server" CssClass="btn btn-success submit" Text="Select"
                                                OnClick="Button1_Click" />
                                            <span style="float: right;"><b><a href="PaymentModify-Step11-1.aspx">Back</a></b>
                                            </span>
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
                                                        Ms. Customer, we do not recommend pushing payments to the end of the program. Can
                                                        you at least make a payment of [1/2 payment amount]?
                                                    </p>
                                                </blockquote>
                                            </div>
                                        </asp:Panel>
                                        <asp:Panel ID="pnlaccountchange" runat="server" Visible="false">
                                            <div class="span10 form-horizontal">
                                                <div class="span12">
                                                    <asp:RadioButtonList ID="rdb" runat="server" CssClass="radio inline" RepeatDirection="Vertical">
                                                        <asp:ListItem Text="Yes" Value="1" Selected="True" />
                                                        <asp:ListItem Text="No" Value="2" />
                                                    </asp:RadioButtonList>
                                                    <br />
                                                    <br />
                                                    <asp:Button ID="Button2" runat="server" CssClass="btn btn-success submit" Text="Select"
                                                        OnClick="Button2_Click" />
                                                </div>
                                            </div>
                                        </asp:Panel>
                                    </div>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </div>
                    </div>
                
</asp:Content>
