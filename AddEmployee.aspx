<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true"
    CodeBehind="AddEmployee.aspx.cs" Inherits="IDPRO.AddEmployee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row-fluid">
        <div class="span12">
            <div class="box">
                <div class="box-header">
                    <span class="title">Admin</span>
                </div>
                <div class="box-content">
                    <div class="row-fluid">
                        <div class="span12">
                            <div class="tabbable">
                                <ul class="nav nav-tabs">
                                    <li class="active"><a href="#">
                                        <asp:Label ID="lblhead" runat="server"></asp:Label></a></li>
                                </ul>
                            </div>
                        </div>
                        <div style="padding-left: 100px;">
                            <asp:Label ID="lblerror" runat="server" Style="color: Red;"></asp:Label></div>
                        <asp:Panel ID="pnltext" runat="server">
                            <div class="span12">
                                <div class="form-horizontal form-large">
                                    <h3 class="title-divider">
                                        <span>
                                            <asp:Label ID="lblheadlabel" runat="server"></asp:Label></span></h3>
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
                                                <label class="control-label" for="Email">
                                                    Email</label>
                                                <div class="controls">
                                                    <asp:TextBox ID="txtEmail" required pattern="^[a-zA-Z0-9-\_.]+@[a-zA-Z0-9-\_.]+\.[a-zA-Z0-9.]{2,5}$"
                                                        runat="server" placeholder="Email"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="span5">
                                            <div class="control-group">
                                                <label class="control-label" for="Username">
                                                    Username</label>
                                                <div class="controls">
                                                    <asp:TextBox ID="txtUsename" runat="server" required pattern="^[a-zA-Z0-9]+$" placeholder="Username"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="span12">
                                        <div class="span5">
                                            <div class="control-group">
                                                <label class="control-label" for="Password">
                                                    Password</label>
                                                <div class="controls">
                                                    <asp:TextBox ID="txtPassword" required pattern="^[a-zA-Z0-9]+$" runat="server" TextMode="Password"
                                                        placeholder="Password"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="span5">
                                            <div class="control-group">
                                                <label class="control-label" for="Status">
                                                    Status</label>
                                                <div class="controls">
                                                    <asp:DropDownList ID="ddlstatus" runat="server">
                                                        <asp:ListItem Text="Select"></asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="span12">
                                        <div class="span5">
                                            <div class="control-group">
                                                <label class="control-label" for="Role">
                                                    Role</label>
                                                <div class="controls">
                                                    <asp:DropDownList ID="ddlrole" runat="server">
                                                        <asp:ListItem Text="Select"></asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="span5">
                                            <div class="control-group">
                                                <label class="control-label" for="Status">
                                                    Title</label>
                                                <div class="controls">
                                                    <asp:TextBox ID="txttitle" required pattern="[a-zA-Z ]+" runat="server" placeholder="Title"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="span12">
                                        <div class="span5">
                                            <div class="control-group">
                                                <label class="control-label" for="Manager">
                                                    Manager</label>
                                                <div class="controls">
                                                    <asp:TextBox ID="txtManager" runat="server" required pattern="[a-zA-Z ]+" placeholder="Manager"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="span5">
                                            <div class="control-group">
                                                <label class="control-label" for="Department">
                                                    Department</label>
                                                <div class="controls">
                                                    <asp:DropDownList ID="ddlDepartment" runat="server">
                                                        <asp:ListItem Text="Select"></asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="control-group  text-center">
                                        <div class="controls">
                                            <asp:Button ID="btnAdd" runat="server" CssClass="btn btn-success submit" Text="Add"
                                                OnClick="btnAdd_Click" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </asp:Panel>
                        <asp:Panel ID="pnlmsg" runat="server" Visible="false">
                            <div class="span12" style="padding-left: 100px; padding-top: 20px;">
                                Thanks,Record saved successfully.
                            </div>
                        </asp:Panel>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
