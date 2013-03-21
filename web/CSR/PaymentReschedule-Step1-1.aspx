<%@ Page Title="" Language="C#" MasterPageFile="~/web/CSR/CustomerService.Master" AutoEventWireup="true"
    CodeBehind="PaymentReschedule-Step1-1.aspx.cs" Inherits="IDPRO.web.CSR.PaymentReschedule_Step1_1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     
                    <div class="row-fluid">
                        <div class="span1">
                        </div>
                        <asp:UpdatePanel ID="update1" runat="server">
                            <ContentTemplate>
                                <div class="span6">
                                    <div class="span10 cs">
                                        <blockquote class="example-right">
                                            <p>
                                                I am calling you because your recent payment was returned to us. In order to get
                                                your program on track, we need to reschedule this payment as soon as possible. When
                                                would you like to reschedule this payment?
                                            </p>
                                        </blockquote>
                                    </div>
                                    <div class="row-fluid">
                                        <div class="span10 form-horizontal form-large">
                                            <div class="span12">
                                                <div class="span5">
                                                </div>
                                            </div>
                                            <div class="span12">
                                                <div class="span5">
                                                    <div class="control-group">
                                                        <label class="control-label" for="First Name">
                                                            Draft Date</label>
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
                                                                        </thead>
                                                                        <tbody>
                                                                        </tbody>
                                                                    </table>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="span5">
                                                    <div class="control-group">
                                                        <label class="control-label" for="Last Name">
                                                            Draft Amount</label>
                                                        <div class="controls">
                                                            <asp:TextBox ID="TextBox2" runat="server" placeholder="Draft Amount"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="span12">
                                                <div class="span5">
                                                    <div class="control-group">
                                                        <label class="control-label" for="First Name">
                                                            Draft Date</label>
                                                        <div class="controls">
                                                            <div class="bfh-datepicker" data-format="y-m-d" data-date="2000-01-01">
                                                                <div class="input-prepend bfh-datepicker-toggle" data-toggle="bfh-datepicker">
                                                                    <span class="add-on"><i class="icon-calendar"></i></span>
                                                                    <asp:TextBox ID="TextBox3" runat="server" CssClass="span12"></asp:TextBox>
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
                                                                        </thead>
                                                                        <tbody>
                                                                        </tbody>
                                                                    </table>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="span5">
                                                    <div class="control-group">
                                                        <label class="control-label" for="Last Name">
                                                            Draft Amount</label>
                                                        <div class="controls">
                                                            <asp:TextBox ID="TextBox4" runat="server" placeholder="Draft Amount"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="span12">
                                                <div class="span5">
                                                    <div class="control-group">
                                                        <label class="control-label" for="First Name">
                                                            Draft Date</label>
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
                                                                        </thead>
                                                                        <tbody>
                                                                        </tbody>
                                                                    </table>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="span5">
                                                    <div class="control-group">
                                                        <label class="control-label" for="Last Name">
                                                            Draft Amount</label>
                                                        <div class="controls">
                                                            <asp:TextBox ID="TextBox8" runat="server" placeholder="Draft Amount"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="span12">
                                                <div class="span5">
                                                    <div class="control-group">
                                                        <label class="control-label" for="First Name">
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
                                                                        </thead>
                                                                        <tbody>
                                                                        </tbody>
                                                                    </table>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="span5">
                                                    <div class="control-group">
                                                        <label class="control-label" for="Last Name">
                                                            Draft Amount</label>
                                                        <div class="controls">
                                                            <asp:TextBox ID="TextBox6" runat="server" placeholder="Draft Amount"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="span12">
                                                <div class="span5">
                                                    <div class="control-group">
                                                        <label class="control-label" for="First Name">
                                                            Draft Date</label>
                                                        <div class="controls">
                                                            <div class="bfh-datepicker" data-format="y-m-d" data-date="2000-01-01">
                                                                <div class="input-prepend bfh-datepicker-toggle" data-toggle="bfh-datepicker">
                                                                    <span class="add-on"><i class="icon-calendar"></i></span>
                                                                    <asp:TextBox ID="TextBox9" runat="server" CssClass="span12"></asp:TextBox>
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
                                                                        </thead>
                                                                        <tbody>
                                                                        </tbody>
                                                                    </table>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="span5">
                                                    <div class="control-group">
                                                        <label class="control-label" for="Last Name">
                                                            Draft Amount</label>
                                                        <div class="controls">
                                                            <asp:TextBox ID="TextBox10" runat="server" placeholder="Draft Amount"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="span12">
                                                <div class="span5">
                                                    <div class="control-group">
                                                        <label class="control-label" for="First Name">
                                                            Draft Date</label>
                                                        <div class="controls">
                                                            <div class="bfh-datepicker" data-format="y-m-d" data-date="2000-01-01">
                                                                <div class="input-prepend bfh-datepicker-toggle" data-toggle="bfh-datepicker">
                                                                    <span class="add-on"><i class="icon-calendar"></i></span>
                                                                    <asp:TextBox ID="TextBox11" runat="server" CssClass="span12"></asp:TextBox>
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
                                                                        </thead>
                                                                        <tbody>
                                                                        </tbody>
                                                                    </table>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="span5">
                                                    <div class="control-group">
                                                        <label class="control-label" for="Last Name">
                                                            Draft Amount</label>
                                                        <div class="controls">
                                                            <asp:TextBox ID="TextBox12" runat="server" placeholder="Draft Amount"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="span12">
                                                <div class="span6 offset4">
                                                    <asp:Button ID="btnAdd" runat="server" Text="Next" 
                                                        CssClass="btn btn-success submit" onclick="btnAdd_Click" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                        <asp:UpdatePanel ID="update2" runat="server">
                            <ContentTemplate>
                                <div class="span5">
                                    <div class="span10 cs">
                                        <blockquote class="example-right">
                                            <p>
                                                OK, Mr. Customer. This means you will be making a double payment on [chosen draft
                                                date]. Thank you!
                                            </p>
                                        </blockquote>
                                    </div>
                                </div>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
              
</asp:Content>
