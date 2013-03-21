<%@ Page Title="" Language="C#" MasterPageFile="~/web/CSR/CustomerService.Master" AutoEventWireup="true"
    CodeBehind="PaymentReschedule-Step1-12.aspx.cs" Inherits="IDPRO.web.CSR.PaymentReschedule_Step1_12" %>

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
                                                OK, Mr Customer. You will be drafting the make-up on [chosen date]. Please be aware
                                                that you have a payment scheduled for [following draft date] that will still occur.
                                                Thank you!
                                            </p>
                                        </blockquote>
                                    </div>
                                    <div class="row-fluid">
                                        <div class="span10 form-horizontal">
                                            <div class="span12">
                                                <div class="control-group">
                                                    <label class="control-label" for="inputEmail">
                                                        Alternate Draft Date
                                                    </label>
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
                                                <asp:Button ID="Button1" runat="server" CssClass="btn btn-success submit" Text="Select"
                                                    OnClick="Button1_Click" />
                                                <span style="float: right;"><b><a href="PaymentReschedule-Step1-1.aspx">Back</a></b>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
               
</asp:Content>
