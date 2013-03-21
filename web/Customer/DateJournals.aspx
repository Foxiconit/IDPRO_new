<%@ Page Title="" Language="C#" MasterPageFile="~/web/Customer/Customer.Master" AutoEventWireup="true"
    CodeBehind="DateJournals.aspx.cs" Inherits="IDPRO.web.Customer.DateJournals" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
                        <div class="span7">
                            <div class="form-horizontal form-medium plan">
                                <h3 class="title-divider">
                                    <span>Date Journals</span></h3>
                                    <div class="control-group">
                                    <label class="control-label" for="inputEmail">
                                        Sales Completed Date</label>
                                    <div class="controls">
                                        <div class="bfh-datepicker" data-format="y-m-d" data-date="2013-01-01">
                                            <div class="input-prepend bfh-datepicker-toggle" data-toggle="bfh-datepicker">
                                                <span class="add-on"><i class="icon-calendar"></i></span>
                                                <asp:TextBox ID="TextBox7" runat="server" CssClass="span8"></asp:TextBox>
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
                                        Contact Received Date</label>
                                    <div class="controls">
                                        <div class="bfh-datepicker" data-format="y-m-d" data-date="2013-01-01">
                                            <div class="input-prepend bfh-datepicker-toggle" data-toggle="bfh-datepicker">
                                                <span class="add-on"><i class="icon-calendar"></i></span>
                                                <asp:TextBox ID="txtDOB" runat="server" CssClass="span8"></asp:TextBox>
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
                                        Onboarding Complete Date</label>
                                    <div class="controls">
                                        <div class="bfh-datepicker" data-format="y-m-d" data-date="2013-01-01">
                                            <div class="input-prepend bfh-datepicker-toggle" data-toggle="bfh-datepicker">
                                                <span class="add-on"><i class="icon-calendar"></i></span>
                                                <asp:TextBox ID="TextBox1" runat="server" CssClass="span8"></asp:TextBox>
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
                                        Orientation Complete Date</label>
                                    <div class="controls">
                                        <div class="bfh-datepicker" data-format="y-m-d" data-date="2013-01-01">
                                            <div class="input-prepend bfh-datepicker-toggle" data-toggle="bfh-datepicker">
                                                <span class="add-on"><i class="icon-calendar"></i></span>
                                                <asp:TextBox ID="TextBox2" runat="server" CssClass="span8"></asp:TextBox>
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
                                        Orientation last Attempt Date</label>
                                    <div class="controls">
                                        <div class="bfh-datepicker" data-format="y-m-d" data-date="2013-01-01">
                                            <div class="input-prepend bfh-datepicker-toggle" data-toggle="bfh-datepicker">
                                                <span class="add-on"><i class="icon-calendar"></i></span>
                                                <asp:TextBox ID="TextBox3" runat="server" CssClass="span8"></asp:TextBox>
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
                                        NSF Last Attempt Date</label>
                                    <div class="controls">
                                        <div class="bfh-datepicker" data-format="y-m-d" data-date="2013-01-01">
                                            <div class="input-prepend bfh-datepicker-toggle" data-toggle="bfh-datepicker">
                                                <span class="add-on"><i class="icon-calendar"></i></span>
                                                <asp:TextBox ID="TextBox4" runat="server" CssClass="span8"></asp:TextBox>
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
                                        Check in Last Attempt</label>
                                    <div class="controls">
                                        <div class="bfh-datepicker" data-format="y-m-d" data-date="2013-01-01">
                                            <div class="input-prepend bfh-datepicker-toggle" data-toggle="bfh-datepicker">
                                                <span class="add-on"><i class="icon-calendar"></i></span>
                                                <asp:TextBox ID="TextBox5" runat="server" CssClass="span8"></asp:TextBox>
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
                                        Add Aditional Loan Attempt</label>
                                    <div class="controls">
                                        <div class="bfh-datepicker" data-format="y-m-d" data-date="2013-01-01">
                                            <div class="input-prepend bfh-datepicker-toggle" data-toggle="bfh-datepicker">
                                                <span class="add-on"><i class="icon-calendar"></i></span>
                                                <asp:TextBox ID="TextBox6" runat="server" CssClass="span8"></asp:TextBox>
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
                                <div class="control-group text-center">
                                    <div class="controls">
                                        <button class="btn btn-success submit" type="submit">
                                            Update</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="span5">
                        </div>
                    
 
</asp:Content>
