<%@ Page Title="" Language="C#" MasterPageFile="~/web/CSR/CustomerService.Master" AutoEventWireup="true"
    CodeBehind="EscalationRefundNSF.aspx.cs" Inherits="IDPRO.web.CSR.EscalationRefundNSF" %>

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
                                        Ms. Customer, why are you requesting this refund?
                                    </p>
                                </blockquote>
                            </div>
                            <div class="row-fluid">
                                <asp:UpdatePanel ID="update1" runat="server">
                                    <ContentTemplate>
                                        <div class="span10 form-horizontal">
                                            <h3 class="title-divider">
                                                <span>Refund NSF Fees</span></h3>
                                            <div class="span12">
                                                <asp:RadioButtonList ID="rdbEscalatione" runat="server" CssClass="radio inline" RepeatDirection="Vertical"
                                                    OnSelectedIndexChanged="rdbEscalatione_SelectedIndexChanged" AutoPostBack="true">
                                                    <asp:ListItem Text="Payment not Pushed" Value="1" Selected="True" />
                                                    <asp:ListItem Text="Wrong Draft Amount" Value="2" />
                                                    <asp:ListItem Text="Oher" Value="3" />
                                                </asp:RadioButtonList>
                                            </div>
                                        </div>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                            </div>
                        </div>
                        <asp:UpdatePanel ID="update2" runat="server">
                            <ContentTemplate>
                                <asp:Panel ID="pnlpayment" runat="server" Visible="false">
                                    <div class="span6">
                                        <div class="span10 cs">
                                            <blockquote class="example-right">
                                                <p>
                                                    Mr. Customer, when did you request this pushed payment? Allow customer to respond.
                                                    I understand. Please fax me a copy of your statement showing the overdraft fees;
                                                    I will provide this to my supervisor and have him/her call you back in reference
                                                    to whether the refund is approved.
                                                </p>
                                            </blockquote>
                                        </div>
                                        <div class="row-fluid">
                                            <div class="span10 form-horizontal">
                                                <h3 class="title-divider">
                                                    <span>Refund NSF Fees</span></h3>
                                                <div class="span12">
                                                    <div class="control-group">
                                                        <label class="control-label csf-label" for="First Name">
                                                            Date of Payment:</label>
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
                                                        <label class="control-label csf-label" for="Last Name">
                                                            Date Push requested:</label>
                                                        <div class="controls">
                                                            <div class="bfh-datepicker" data-format="y-m-d" data-date="2000-01-01">
                                                                <div class="input-prepend bfh-datepicker-toggle" data-toggle="bfh-datepicker">
                                                                    <span class="add-on"><i class="icon-calendar"></i></span>
                                                                    <asp:TextBox ID="TextBox2" runat="server" CssClass="span12"></asp:TextBox>
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
                                                        <label class="control-label csf-label" for="Last Name">
                                                            Fee Amount:</label>
                                                        <div class="controls">
                                                            <asp:TextBox ID="txtAmount" runat="server" CssClass="csf" placeholder="Fee Amount"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="control-group">
                                                        <label class="control-label csf-label" for="Last Name">
                                                            Fax From(if available):</label>
                                                        <div class="controls">
                                                            <asp:TextBox ID="txtFAx" runat="server" CssClass="csf" placeholder="Fax From(if available)"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="control-group">
                                                        <label class="control-label csf-label" for="Last Name">
                                                           Additional Notes:</label>
                                                        <div class="controls">
                                                            <asp:TextBox ID="txtAdditional" runat="server" CssClass="csf" placeholder="Fee Amount"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </asp:Panel>
                                <asp:Panel ID="pnlwrong" runat="server" Visible="false">
                                    <div class="span6">
                                        <div class="span10 cs">
                                            <blockquote class="example-right">
                                                <p>
                                                    Mr. Customer, when did you request the payment change? Allow customer to respond.
                                                    I understand. Please fax me a copy of your statement showing the overdraft fees;
                                                    I will provide this to my supervisor and have him/her call you back in reference
                                                    to whether the refund is approved.
                                                </p>
                                            </blockquote>
                                        </div>
                                        <div class="row-fluid">
                                            <div class="span10 form-horizontal">
                                                <h3 class="title-divider">
                                                    <span>Refund NSF Fees</span></h3>
                                                <div class="span12">
                                                  <div class="control-group">
                                                        <label class="control-label csf-label" for="First Name">
                                                            Date of Payment:</label>
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
                                                        <label class="control-label csf-label" for="Last Name">
                                                            Date change requested:</label>
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
                                                        <label class="control-label csf-label" for="Last Name">
                                                            Fee Amount:</label>
                                                        <div class="controls">
                                                            <asp:TextBox ID="TextBox4" runat="server" CssClass="csf" placeholder="Fee Amount"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="control-group">
                                                        <label class="control-label csf-label" for="Last Name">
                                                            Fax From(if available):</label>
                                                        <div class="controls">
                                                            <asp:TextBox ID="TextBox5" runat="server" CssClass="csf" placeholder="Fax From(if available)"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="control-group">
                                                        <label class="control-label csf-label" for="Last Name">
                                                           Additional Notes:</label>
                                                        <div class="controls">
                                                            <asp:TextBox ID="TextBox6" runat="server" CssClass="csf" placeholder="Fee Amount"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </asp:Panel>
                                <asp:Panel ID="pnlother" runat="server" Visible="false">
                                    <div class="span6">
                                        <div class="span10 cs">
                                            <blockquote class="example-right">
                                                <p>
                                                    Mr. Customer, please ?let me know what happened Allow customer to respond. I understand.
                                                    Please fax me a copy of your statement showing the overdraft fees; I will provide
                                                    this to my supervisor and have him/her call you back in reference to whether the
                                                    refund is approved.
                                                </p>
                                            </blockquote>
                                        </div>
                                        <div class="row-fluid">
                                            <div class="span10 form-horizontal">
                                                <h3 class="title-divider">
                                                    <span>Refund NSF Fees</span></h3>
                                                <div class="span12">
                                                 <div class="control-group">
                                                        <label class="control-label csf-label" for="Last Name">
                                                          Freeform Notes:</label>
                                                        <div class="controls">
                                                            <asp:TextBox ID="txtFree" runat="server" CssClass="csf" placeholder="Freeform Notes"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </asp:Panel>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
               
</asp:Content>
