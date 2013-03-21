<%@ Page Title="" Language="C#" MasterPageFile="~/web/Customer/Customer.Master" AutoEventWireup="true"
    CodeBehind="PlanInfo.aspx.cs" Inherits="IDPRO.web.Customer.PlanInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
                        <div class="span12">
                            <div class="form-horizontal form-medium plan">
                                <h3 class="title-divider">
                                    <span>Plan Information</span></h3>
                                <div class="control-group">
                                    <label class="control-label" for="Last Name">
                                        Program Type</label>
                                    <div class="controls">
                                        <asp:DropDownList ID="DropDownList1" class="span7" runat="server">
                                            <asp:ListItem Text="PDLDS-With FSK"></asp:ListItem>
                                            <asp:ListItem Text="PDLDS-NO FSK"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="First Name">
                                        Debt Total</label>
                                    <div class="controls">
                                        <asp:TextBox ID="txtDebt" runat="server" placeholder="Debt Total" CssClass="span7"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="Last Name">
                                        List of Plan Months</label>
                                    <div class="controls">
                                        <asp:DropDownList ID="DropDownList7" class="span7" runat="server">
                                            <asp:ListItem Text="6"></asp:ListItem>
                                            <asp:ListItem Text="9"></asp:ListItem>
                                            <asp:ListItem Text="12"></asp:ListItem>
                                            <asp:ListItem Text="15"></asp:ListItem>
                                            <asp:ListItem Text="24"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="inputEmail">
                                        Start Date</label>
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
                                    <label class="control-label" for="Last Name">
                                        Schedule Type</label>
                                    <div class="controls">
                                        <asp:DropDownList ID="ddltype" class="span7" runat="server">
                                            <asp:ListItem Text="Weekly"></asp:ListItem>
                                            <asp:ListItem Text="Bi-weekly"></asp:ListItem>
                                            <asp:ListItem Text="Semi Monthly"></asp:ListItem>
                                            <asp:ListItem Text="Monthly"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                 <div class="control-group">
                                    <label class="control-label" for="Last Name">
                                        Second Pay Date</label>
                                    <div class="controls">
                                        <asp:TextBox ID="TextBox1" runat="server" CssClass="span7" placeholder="Second Pay Date"></asp:TextBox>
                                    </div>
                                </div>
                                  <div class="control-group">
                                    <label class="control-label" for="Last Name">
                                       EOM Pay</label>
                                    <div class="controls">
                                        <asp:DropDownList ID="DropDownList2" class="span7" runat="server">
                                            <asp:ListItem Text="Yes"></asp:ListItem>
                                            <asp:ListItem Text="No"></asp:ListItem>
                                             
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="Last Name">
                                        Estimated Settlement</label>
                                    <div class="controls">
                                        <asp:DropDownList ID="DropDownList6" class="span7" runat="server">
                                            <asp:ListItem Text="65%"></asp:ListItem>
                                            <asp:ListItem Text="75%"></asp:ListItem>
                                            <asp:ListItem Text="85%"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="Balance">
                                        Fees</label>
                                    <div class="controls">
                                        <asp:TextBox ID="txtFees" runat="server" CssClass="span7" placeholder="40%"></asp:TextBox>
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
                         
                   
</asp:Content>
