<%@ Page Title="" Language="C#" MasterPageFile="~/web/CSR/CustomerService.Master" AutoEventWireup="true"
    CodeBehind="PaymentModify-step11-2.aspx.cs" Inherits="IDPRO.web.CSR.PaymentModify_step11_2" %>

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
                                        Which draft do you wish to reduce?
                                    </p>
                                </blockquote>
                            </div>
                            <asp:UpdatePanel ID="update1" runat="server">
                                <ContentTemplate>
                                    <div class="row-fluid">
                                        <div class="span10 form-horizontal">
                                            <div class="span12">
                                                <div class="control-group">
                                                    <label class="control-label" for="inputEmail">
                                                        Draft Date</label>
                                                    <div class="controls">
                                                        <div class="bfh-datepicker" data-format="y-m-d" data-date="2000-01-01">
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
                                                <div class="control-group">
                                                    <label class="control-label" for="inputEmail">
                                                        Draft Date</label>
                                                    <div class="controls">
                                                        <div class="bfh-datepicker" data-format="y-m-d" data-date="2000-01-01">
                                                            <div class="input-prepend bfh-datepicker-toggle" data-toggle="bfh-datepicker">
                                                                <span class="add-on"><i class="icon-calendar"></i></span>
                                                                <asp:TextBox ID="TextBox6" runat="server" CssClass="span12"></asp:TextBox>
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
                                                                <asp:TextBox ID="TextBox7" runat="server" CssClass="span12"></asp:TextBox>
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
                                                        <asp:TextBox ID="TextBox8" runat="server" placeholder="Draft Amount"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label class="control-label" for="inputEmail">
                                                        Draft Amount
                                                    </label>
                                                    <div class="controls">
                                                        <asp:TextBox ID="TextBox9" runat="server" placeholder="Draft Amount"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label class="control-label" for="inputEmail">
                                                        Draft Amount
                                                    </label>
                                                    <div class="controls">
                                                        <asp:TextBox ID="TextBox10" runat="server" placeholder="Draft Amount"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                            <br />
                                            <br />
                                            <asp:Button ID="Button1" runat="server" CssClass="btn btn-success submit" Text="Select"
                                                OnClick="Button1_Click" />
                                            <span style="float: right;"><b><a href="PaymentModify-Step11.aspx">Back</a></b>
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
                                                      How much can you pay?

                                                    </p>
                                                </blockquote>
                                            </div>
                                        </asp:Panel>
                                        <asp:Panel ID="pnlaccountchange" runat="server" Visible="false">
                                            <div class="span10 form-horizontal">
                                                <div class="span12">
                                               
                                                    <div class="control-group">
                                                        <label class="control-label" for="inputEmail">
                                                            Draft Amount
                                                        </label>
                                                        <div class="controls">
                                                            <asp:TextBox ID="TextBox3" runat="server" placeholder="Draft Amount"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                </div>
                                                <asp:Button ID="Button2" runat="server" CssClass="btn btn-success submit" Text="Select"
                                                    OnClick="Button2_Click" />
                                            </div>
                                        </asp:Panel>
                                    </div>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </div>
                    </div>
                
</asp:Content>
