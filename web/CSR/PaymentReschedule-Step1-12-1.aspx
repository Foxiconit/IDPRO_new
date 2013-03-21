<%@ Page Title="" Language="C#" MasterPageFile="~/web/CSR/CustomerService.Master" AutoEventWireup="true"
    CodeBehind="PaymentReschedule-Step1-12-1.aspx.cs" Inherits="IDPRO.web.CSR.PaymentReschedule_Step1_12_1" %>

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
                                        Ms. Customer, we do not recommend pushing payments to the end of the program. Can
                                        you at least make a payment of [1/2 payment amount] with one of your next drafts?
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
                                            <span style="float: right;"><b><a href="PaymentReschedule-Step1-12.aspx">Back</a></b>
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
                                                        Which one?
                                                    </p>
                                                </blockquote>
                                            </div>
                                        </asp:Panel>
                                        <asp:Panel ID="pnlCourtesy3" runat="server" Visible="false">
                                            <div class="span10 cs">
                                                <blockquote class="example-right">
                                                    <p>
                                                        Thank you Mr. Customer. When would you like to make up the rest?
                                                    </p>
                                                </blockquote>
                                            </div>
                                        </asp:Panel>
                                        <asp:Panel ID="pnlNo" runat="server" Visible="false">
                                            <div class="span10 cs">
                                                <blockquote class="example-right">
                                                    <p>
                                                        OK, Mr. Customer; then you will be paying [payment amount] on [chosen date], with
                                                        the remainder being drafted on [payment date] for [payment amount]. Thank you!
                                                    </p>
                                                </blockquote>
                                            </div>
                                        </asp:Panel>
                                        <asp:Panel ID="pnlaccountchange" runat="server" Visible="false">
                                            <div class="span10 form-horizontal">
                                                <div class="span12">
                                                    <div class="control-group">
                                                        <label class="control-label" for="inputEmail">
                                                            Draft Date</label>
                                                        <div class="controls">
                                                            <div class="bfh-datepicker" data-format="y-m-d" data-date="2000-01-01">
                                                                <div class="input-prepend bfh-datepicker-toggle" data-toggle="bfh-datepicker">
                                                                    <span class="add-on"><i class="icon-calendar"></i></span>
                                                                    <asp:TextBox ID="txtDOB" runat="server" CssClass="span12"></asp:TextBox>
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
                                                    <div class="control-group">
                                                        <label class="control-label" for="inputEmail">
                                                            Draft Date</label>
                                                        <div class="controls">
                                                            <div class="bfh-datepicker" data-format="y-m-d" data-date="2000-01-01">
                                                                <div class="input-prepend bfh-datepicker-toggle" data-toggle="bfh-datepicker">
                                                                    <span class="add-on"><i class="icon-calendar"></i></span>
                                                                    <asp:TextBox ID="TextBox4" runat="server" CssClass="span12"></asp:TextBox>
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
                                                    <div class="control-group">
                                                        <label class="control-label" for="inputEmail">
                                                            Draft Date
                                                        </label>
                                                        <div class="controls">
                                                            <div class="bfh-datepicker" data-format="y-m-d" data-date="2000-01-01">
                                                                <div class="input-prepend bfh-datepicker-toggle" data-toggle="bfh-datepicker">
                                                                    <span class="add-on"><i class="icon-calendar"></i></span>
                                                                    <asp:TextBox ID="TextBox1" runat="server" CssClass="span12"></asp:TextBox>
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
                                                    <div class="control-group">
                                                        <label class="control-label" for="inputEmail">
                                                            Draft Amount
                                                        </label>
                                                        <div class="controls">
                                                            <asp:TextBox ID="txtamount" runat="server" placeholder="Draft Amount"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="control-group">
                                                        <label class="control-label" for="inputEmail">
                                                            Draft Amount
                                                        </label>
                                                        <div class="controls">
                                                            <asp:TextBox ID="TextBox2" runat="server" placeholder="Draft Amount"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="control-group">
                                                        <label class="control-label" for="inputEmail">
                                                            Draft Amount
                                                        </label>
                                                        <div class="controls">
                                                            <asp:TextBox ID="TextBox3" runat="server" placeholder="Draft Amount"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </asp:Panel>
                                        <asp:Panel ID="pnlNoans" runat="server" Visible="false">
                                            <div class="span10 cs">
                                                <blockquote class="example-right">
                                                    <p>
                                                        I understand Mr. Customer. Please note that if you are on any payment plans with
                                                        lenders, you risk defaulting on them and having your balance reset. I will reschedule
                                                        this payment to the end of your program. Thank you!
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
