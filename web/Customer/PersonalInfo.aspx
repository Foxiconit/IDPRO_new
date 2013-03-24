<%@ Page Title="" Language="C#" MasterPageFile="~/web/Customer/Customer.Master" AutoEventWireup="true"
    CodeBehind="PersonalInfo.aspx.cs" Inherits="IDPRO.web.Customer.PersonalInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="pnltext" runat="server">
        <div class="row-fluid">
            <div class="span12">
                <div class="form-horizontal form-large">
                    <h3 class="title-divider">
                        <span>Customer Information</span></h3>
                    <div class="span12">
                        <div class="span5">
                            <div class="control-group">
                                <label class="control-label" for="First Name">
                                    First Name</label>
                                <div class="controls">
                                    <asp:TextBox ID="txtFname" required pattern="[a-zA-Z ]+" runat="server" placeholder="First Name"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="span5">
                            <div class="control-group">
                                <label class="control-label" for="Last Name">
                                    Last Name</label>
                                <div class="controls">
                                    <asp:TextBox ID="txtLname" required pattern="[a-zA-Z ]+" runat="server" placeholder="Last Name"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="span12">
                        <div class="span5">
                            <div class="control-group">
                                <label class="control-label" for="Address">
                                    Address</label>
                                <div class="controls">
                                    <asp:TextBox ID="txtAddress" runat="server" required pattern="[ a-zA-Z0-9,#.-/]+"
                                        placeholder="Address"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="span5">
                            <div class="control-group">
                                <label class="control-label" for="Address">
                                    Address2</label>
                                <div class="controls">
                                    <asp:TextBox ID="txtAddress1" runat="server" placeholder="Address"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="span12">
                        <div class="span5">
                            <div class="control-group">
                                <label class="control-label" for="inputEmail">
                                    City</label>
                                <div class="controls">
                                    <asp:TextBox ID="txtCity" required pattern="[a-zA-Z ]+" CssClass="span4" runat="server"
                                        placeholder="City"></asp:TextBox>
                                    <asp:DropDownList ID="ddlcity" runat="server" CssClass="state">
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>
                        <div class="span5">
                            <div class="control-group">
                                <label class="control-label" for="inputEmail">
                                    Zip</label>
                                <div class="controls">
                                    <asp:TextBox ID="txtZip" MaxLength="5" required pattern="\d+" runat="server" placeholder="Zip"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="span12">
                        <div class="span5">
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
                                <label class="control-label" for="SSN">
                                    SSN</label>
                                <div class="controls">
                                    <asp:TextBox ID="txtSsn1" runat="server" required pattern="\d+" MaxLength="3" CssClass="span2"></asp:TextBox>
                                    -
                                    <asp:TextBox ID="txtSsn2" runat="server" required pattern="\d+" MaxLength="2" CssClass="span3"></asp:TextBox>
                                    -
                                    <asp:TextBox ID="txtSsn3" CssClass="span4" required pattern="\d+" MaxLength="4" runat="server"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="span12">
                        <div class="span5">
                            <div class="control-group">
                                <label class="control-label" for="Phone 1">
                                    Phone 1</label>
                                <div class="controls">
                                    <asp:TextBox ID="txtphone1" runat="server" MaxLength="10" CssClass="span6" required
                                        pattern="\d+" placeholder="Phone 1"></asp:TextBox>
                                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="span4">
                                        <asp:ListItem Text="Home"></asp:ListItem>
                                        <asp:ListItem Text="Cell"></asp:ListItem>
                                        <asp:ListItem Text="Work"></asp:ListItem>
                                        <asp:ListItem Text="Other"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>
                        <div class="span5">
                            <div class="control-group">
                                <label class="control-label" for="Phone 2">
                                    Phone 2</label>
                                <div class="controls">
                                    <asp:TextBox ID="txtphone2" MaxLength="10" CssClass="span6" required pattern="\d+"
                                        runat="server" placeholder="Phone 2"></asp:TextBox>
                                    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="span4">
                                        <asp:ListItem Text="Home"></asp:ListItem>
                                        <asp:ListItem Text="Cell"></asp:ListItem>
                                        <asp:ListItem Text="Work"></asp:ListItem>
                                        <asp:ListItem Text="Other"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="span12">
                        <div class="span5">
                            <div class="control-group">
                                <label class="control-label" for="inputEmail">
                                    Primary Email</label>
                                <div class="controls">
                                    <asp:TextBox ID="txtPEmail" required pattern="^[a-zA-Z0-9-\_.]+@[a-zA-Z0-9-\_.]+\.[a-zA-Z0-9.]{2,5}$"
                                        runat="server" placeholder="Primary Email"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="span5">
                            <div class="control-group">
                                <label class="control-label" for="inputEmail">
                                    Secondary Email</label>
                                <div class="controls">
                                    <asp:TextBox ID="txtSEmail" required pattern="^[a-zA-Z0-9-\_.]+@[a-zA-Z0-9-\_.]+\.[a-zA-Z0-9.]{2,5}$"
                                        runat="server" placeholder="Secondary Email"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="span12">
                        <div class="span5">
                            <div class="control-group">
                                <label class="control-label" for="inputEmail">
                                    Mother's Madien Name</label>
                                <div class="controls">
                                    <asp:TextBox ID="txtmother" runat="server" placeholder="Mother's Madien Name"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="span5">
                            <div class="control-group">
                                <label class="control-label" for="Phone 2">
                                    Status</label>
                                <div class="controls">
                                    <asp:DropDownList ID="DropDownList3" runat="server" CssClass="span4">
                                        <asp:ListItem Text="Active"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="control-group  text-center">
                        <div class="controls">
                            <%--<button class="btn btn-success submit" type="submit">
                                            Update</button>--%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <br />
        <div class="row-fluid">
            <div class="span12">
                <div class="form-horizontal form-large">
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <h3 class="title-divider">
                                <span>Co- Customer Information</span></h3>
                            <div class="span12">
                                <div class="span5">
                                    <div class="control-group">
                                        <label class="control-label" for="First Name">
                                            First Name</label>
                                        <div class="controls">
                                            <asp:TextBox ID="txtcofirstname" AutoPostBack="true" runat="server" placeholder="First Name"
                                                OnTextChanged="txtcofirstname_TextChanged"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="span5">
                                    <div class="control-group">
                                        <label class="control-label" for="Last Name">
                                            Last Name</label>
                                        <div class="controls">
                                            <asp:TextBox ID="txtcolastname" runat="server" AutoPostBack="true" placeholder="Last Name"
                                                OnTextChanged="txtcolastname_TextChanged"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="span12">
                                <div class="span5">
                                    <div class="control-group">
                                        <label class="control-label" for="SSN">
                                            SSN</label>
                                        <div class="controls">
                                            <asp:TextBox ID="txtssn1co" runat="server" AutoPostBack="true" MaxLength="3" CssClass="span2"
                                                OnTextChanged="txtssn1co_TextChanged"></asp:TextBox>
                                            -
                                            <asp:TextBox ID="txtssn2co" runat="server" AutoPostBack="true" MaxLength="2" CssClass="span3"
                                                OnTextChanged="txtssn2co_TextChanged"></asp:TextBox>
                                            -
                                            <asp:TextBox ID="txtssn3co" CssClass="span4" AutoPostBack="true" MaxLength="4" runat="server"
                                                OnTextChanged="txtssn3co_TextChanged"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="span5">
                                    <div class="control-group">
                                        <label class="control-label" for="inputEmail">
                                            DOB</label>
                                        <div class="controls">
                                            <div class="bfh-datepicker" data-format="y-m-d" data-date="2000-01-01">
                                                <div class="input-prepend bfh-datepicker-toggle" data-toggle="bfh-datepicker">
                                                    <span class="add-on"><i class="icon-calendar"></i></span>
                                                    <asp:TextBox ID="txtcodob" runat="server" CssClass="span12"></asp:TextBox>
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
                            </div>
                            <div class="control-group  text-center">
                                <div class="controls">
                                    <%--<button class="btn btn-success submit" type="submit">
                                            Update</button>--%>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
            </div>
        </div>
        </div> </div>
        <br />
        <div class="row-fluid">
            <div class="span3 offset5">
                <asp:Button ID="btn" runat="server" Text="Update" CssClass="btn btn-success submit" />
            </div>
        </div>
    </asp:Panel>
    <div style="padding-left: 100px; padding-top: 100px;">
        <asp:Panel ID="pnlmsg" runat="server">
            <asp:Label ID="lblmsg" runat="server"></asp:Label>
        </asp:Panel>
    </div>
    </div> </div>
</asp:Content>
