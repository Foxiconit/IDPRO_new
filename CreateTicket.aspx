<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true"
    CodeBehind="CreateTicket.aspx.cs" Inherits="IDPRO.CreateTicket" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row-fluid">
        <div class="span12">
            <div class="box">
                <div class="box-header">
                    <span class="title">Customer Service</span>
                </div>
                <div class="box-content">
                    <div class="row-fluid">
                        <div class="span12">
                            <div class="span4">
                                <div class="row-fluid">
                                    <br />
                                    <div class="span12 form-horizontal text-center" style="height: 600px;">
                                        <h3 class="title-divider">
                                            <span>New Call</span></h3>
                                        <label>
                                            Select Topic
                                        </label>
                                        <asp:DropDownList ID="DropDownList1" runat="server">
                                            <asp:ListItem>Topic</asp:ListItem>
                                        </asp:DropDownList>
                                        <br />
                                        <asp:RadioButtonList ID="RadioButtonList1" CssClass="radio inline" Visible="false"
                                            runat="server">
                                            <asp:ListItem>123 123 123 123 </asp:ListItem>
                                            <asp:ListItem>123 123 123 123 </asp:ListItem>
                                            <asp:ListItem>123 123 123 123 </asp:ListItem>
                                            <asp:ListItem>123 123 123 123 </asp:ListItem>
                                        </asp:RadioButtonList>
                                        <br />
                                        <label>
                                        </label>
                                        <asp:Button ID="Button1" runat="server" CssClass="btn btn-success submit" Text="Submit" />
                                        <br />
                                    </div>
                                </div>
                            </div>
                            <div class="span8">
                                <div class="row-fluid">
                                    <div class="span12">
                                        <div class="tabbable">
                                            <ul class="nav nav-tabs">
                                                <li class=""><a href="SearchCustomer.aspx">Search Customer</a></li>
                                                <li class="active"><a href="PersonalInfo.aspx">Personal Info</a></li>
                                                <li class=""><a href="Creditor.aspx">Creditor Info</a></li>
                                                <li class=""><a href="Plan.aspx">Plan Info</a></li>
                                                <li class=""><a href="BankInfo.aspx">Bank Info</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="row-fluid">
                                    <h3 class="title-divider">
                                        <span>Create Ticket</span></h3>
                                    <div class="span11 well" style="height: 479px;">
                                        <div class="form-horizontal">
                                            <h3 class="title-divider">
                                            </h3>
                                            <div class="span12">
                                                <div class="span5">
                                                    <div class="control-group">
                                                        <label class="control-label" for="Last Name">
                                                            Ticket Type</label>
                                                        <div class="controls">
                                                            <asp:DropDownList ID="ddltype" runat="server">
                                                                <asp:ListItem Text="Online"></asp:ListItem>
                                                                <asp:ListItem Text="Store Front"></asp:ListItem>
                                                            </asp:DropDownList>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="span12">
                                                <div class="span5">
                                                    <div class="control-group">
                                                        <label class="control-label" for="Last Name">
                                                            Priority</label>
                                                        <div class="controls">
                                                            <asp:DropDownList ID="DropDownList2" runat="server">
                                                                <asp:ListItem Text="Low"></asp:ListItem>
                                                                <asp:ListItem Text="Medium"></asp:ListItem>
                                                                <asp:ListItem Text="Very Urgent"></asp:ListItem>
                                                            </asp:DropDownList>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="span12">
                                                <div class="span5">
                                                    <div class="control-group">
                                                        <label class="control-label" for="Last Name">
                                                            Assigned To</label>
                                                        <div class="controls">
                                                            <asp:DropDownList ID="DropDownList3" runat="server">
                                                                <asp:ListItem Text="Low"></asp:ListItem>
                                                                <asp:ListItem Text="Medium"></asp:ListItem>
                                                                <asp:ListItem Text="Very Urgent"></asp:ListItem>
                                                            </asp:DropDownList>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="span12">
                                                <div class="span11">
                                                    <div class="control-group">
                                                        <label class="control-label" for="Last Name">
                                                            Description</label>
                                                        <div class="controls">
                                                            <asp:TextBox ID="TextBox1" runat="server" Rows="10" CssClass="span12" Columns="50"
                                                                TextMode="MultiLine"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="control-group  text-center">
                                                <div class="controls">
                                                    <asp:Button ID="btnAdd" runat="server" Text="Submit" CssClass="btn btn-success submit" />
                                                </div>
                                            </div>
                                        </div>
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
