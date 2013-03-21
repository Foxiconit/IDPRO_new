<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true"
    CodeBehind="LeadActivity.aspx.cs" Inherits="IDPRO.LeadActivity" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row-fluid">
        <div class="span12">
            <div class="box">
                <div class="box-header">
                    <span class="title">Leads Avtivity</span>
                </div>
                <div class="box-content">
                    <div class="row-fluid">
                        <div class="span2 prettyprint form-inline">
                            <label>
                                Lead Type</label>
                            <asp:DropDownList ID="DropDownList1" CssClass="span6 pull-right" runat="server">
                                <asp:ListItem>All</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="span3 prettyprint form-inline">
                            <label>
                                Companion</label>
                            <asp:DropDownList ID="DropDownList2" CssClass="span7 pull-right" runat="server">
                                <asp:ListItem>Call in 8050 502 021</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="span2 prettyprint form-inline">
                            <label>
                                Status</label>
                            <asp:DropDownList ID="DropDownList3" CssClass="span7 pull-right" runat="server">
                                <asp:ListItem>New</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="span2 prettyprint form-inline">
                            <label>
                                User</label>
                            <asp:DropDownList ID="DropDownList4" CssClass="span8 pull-right" runat="server">
                                <asp:ListItem>Name, First</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="span3 prettyprint form-inline">
                            <label>
                                Time Zone</label>
                            <asp:DropDownList ID="DropDownList5" CssClass="span8 pull-right" runat="server">
                                <asp:ListItem>--Select Time Zone--</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="row-fluid">
                        <div class="span12 form-actions pull-right  well">
                            <div class="span3 pull-right">
                                <asp:Button ID="Button3" runat="server" CssClass="btn  btn-success" Text="Save" />
                                <asp:Button ID="Button4" runat="server" CssClass="btn  btn-success" Text="Save & Close" />
                                <asp:Button ID="btn1" runat="server" CssClass="btn" Text="Cancel" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row-fluid">
        <div class="span12">
            <div class="box">
                <div class="box-header">
                    <span class="title">New Sales</span>
                </div>
                <div class="box-content">
                    <div class="row-fluid">
                        <div class="span12">
                            <div class="tabbable">
                                <ul class="nav nav-tabs">
                                    <li class="active"><a href="PersonalInfo.aspx">Personal Info</a></li>
                                    <li class=""><a href="Creditor.aspx">Creditor Info</a></li>
                                    <li class=""><a href="Plan.aspx">Plan Info</a></li>
                                    <li class=""><a href="BankInfo.aspx">Bank Info</a></li>
                                    <li class=""><a href="Mails.aspx">My Mails</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="span6">
                            <div class="form-horizontal form-medium">
                                <h3 class="title-divider">
                                    <span>Client Information</span></h3>
                                <div class="control-group">
                                    <label class="control-label" for="First Name">
                                        First Name</label>
                                    <div class="controls">
                                        <asp:TextBox ID="txtFName" runat="server" placeholder="First Name"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="Last Name">
                                        Last Name</label>
                                    <div class="controls">
                                        <asp:TextBox ID="txtLName" runat="server" placeholder="Last Name"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="SSN">
                                        SSN</label>
                                    <div class="controls">
                                        <asp:TextBox ID="txtSsn1" runat="server" CssClass="span2"></asp:TextBox>
                                        -
                                        <asp:TextBox ID="txtSsn2" runat="server" CssClass="span3"></asp:TextBox>
                                        -
                                        <asp:TextBox ID="txtSsn3" CssClass="span4" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="Address">
                                        Address</label>
                                    <div class="controls">
                                        <asp:TextBox ID="txtAddress" runat="server" placeholder="Address"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="Address">
                                    </label>
                                    <div class="controls">
                                        <asp:TextBox ID="txtAddress1" runat="server" placeholder="Address"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="inputEmail">
                                        City</label>
                                    <div class="controls">
                                        <asp:TextBox ID="txtCity" CssClass="span4" runat="server" placeholder="City"></asp:TextBox>
                                        <asp:DropDownList ID="ddlCity" CssClass="state" runat="server">
                                            <asp:ListItem Text="VA"></asp:ListItem>
                                        </asp:DropDownList>
                                        <%--  <select class="state" data-country="US" data-state="CA">
                                            <option>VA</option>
                                        </select>--%>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="inputEmail">
                                        Zip</label>
                                    <div class="controls">
                                        <asp:TextBox ID="txtZip" runat="server" placeholder="Zip"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="inputEmail">
                                        DOB</label>
                                    <div class="controls">
                                        <div class="bfh-datepicker" data-format="y-m-d" data-date="2000-01-01">
                                            <div class="input-prepend bfh-datepicker-toggle" data-toggle="bfh-datepicker">
                                                <span class="add-on"><i class="icon-calendar"></i></span>
                                                <asp:TextBox ID="txtDate" runat="server" CssClass="span12"></asp:TextBox>
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
                                        <asp:Button ID="btnUpdate" runat="server" CssClass="btn btn-success submit" Text="Update" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="span5">
                            <div class="form-horizontal form-medium">
                                <h3 class="title-divider">
                                    <span>Co- Client Information</span></h3>
                                <div class="control-group">
                                    <label class="control-label" for="First Name">
                                        First Name</label>
                                    <div class="controls">
                                        <asp:TextBox ID="txtFirstN" runat="server" placeholder="First Name"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="Last Name">
                                        Last Name</label>
                                    <div class="controls">
                                        <asp:TextBox ID="txtLastN" runat="server" placeholder="Last Name"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="SSN">
                                        SSN</label>
                                    <div class="controls">
                                        <asp:TextBox ID="SSN1" runat="server" class="span2"></asp:TextBox>
                                        -
                                        <asp:TextBox ID="SSN2" runat="server" CssClass="span3"></asp:TextBox>
                                        -
                                        <asp:TextBox ID="SSN3" CssClass="span4" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="inputEmail">
                                        DOB</label>
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
                                <div class="control-group  text-center">
                                    <div class="controls">
                                        <asp:Button ID="btnUpdate1" runat="server" CssClass="btn btn-success submit" Text="Update" />
                                    </div>
                                </div>
                            </div>
                            <br />
                             <div class="form-horizontal form-medium">
                                <h3 class="title-divider">
                                    <span>Contact Information</span></h3>
                                <div class="control-group">
                                    <label class="control-label" for="Home Phone">
                                        Home Phone</label>
                                    <div class="controls">
                                        <asp:TextBox ID="txtHome" runat="server" placeholder="Home Phone"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="Work Phone">
                                        Work Phone</label>
                                    <div class="controls">
                                        <asp:TextBox ID="txtWork" runat="server" placeholder="Work Phone"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="Cell Phone">
                                        Cell Phone</label>
                                    <div class="controls">
                                        <asp:TextBox ID="txtCell" runat="server" placeholder="Cell Phone"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="Other Phone">
                                        Other Phone</label>
                                    <div class="controls">
                                        <asp:TextBox ID="txtOther" runat="server" placeholder="Other Phone"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="inputEmail">
                                        Primary Email</label>
                                    <div class="controls">
                                        <asp:TextBox ID="txtPEmail" runat="server" placeholder="Primary Email"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="inputEmail">
                                        Secondary Email</label>
                                    <div class="controls">
                                        <asp:TextBox ID="txtSEmail" runat="server" placeholder="Secondary Email"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="control-group text-center">
                                    <div class="controls">
                                        <asp:Button ID="btnUpdate2" runat="server" CssClass="btn btn-success submit" Text="Update" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
