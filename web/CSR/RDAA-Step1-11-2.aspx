<%@ Page Title="" Language="C#" MasterPageFile="~/web/CSR/CustomerService.Master" AutoEventWireup="true"
    CodeBehind="RDAA-Step1-11-2.aspx.cs" Inherits="IDPRO.RDAA_Step1_11_2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
                        <div class="span11">
                            <div class="span5 cs">
                                <blockquote class="example-right">
                                    <p>
                                        Ms. Customer, it is very urgent that we update this information. Every day that
                                        goes by with missed payments is a day your negotiator can’t work on your behalf.
                                        When is a good time to call you back to obtain this information?
                                    </p>
                                </blockquote>
                            </div>
                            <asp:UpdatePanel ID="update2" runat="server">
                                <ContentTemplate>
                                    <asp:Panel ID="pnlconfirm" runat="server" Visible="false">
                                        <div class="span6 cs offset1">
                                            <blockquote class="example-right">
                                                <p>
                                                    Thank you Ms. Customer. I will call you then to obtain this information.
                                                </p>
                                            </blockquote>
                                        </div>
                                    </asp:Panel>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </div>
                        <div class="span12">
                            <div class="row-fluid">
                                <div class="span5 form-horizontal">
                                    <h3 class="title-divider">
                                        <span>Account Update RDAA</span></h3>
                                    <div class="span12">
                                        <div class="control-group">
                                            <label class="control-label" for="inputEmail">
                                                Select Date</label>
                                            <div class="controls">
                                                <div class="bfh-datepicker" data-format="y-m-d" data-date="2013-03-01">
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
                                        <div class="control-group  text-center">
                                            <div class="controls">
                                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                    <ContentTemplate>
                                                        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" CssClass="btn btn-success submit" />
                                                         <span style="float: right;"><b><a href="RDAA-Step1-11.aspx">Back</a></b> </span>
                                                       
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    
</asp:Content>
