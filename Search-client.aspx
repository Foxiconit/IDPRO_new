<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true"
    CodeBehind="Search-client.aspx.cs" Inherits="IDPRO.Search_client" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row-fluid">
        <div class="span12">
            <div class="box">
                <div class="box-header">
                    <span class="title">Customers</span>
                </div>
                <div class="box-content">
                    <div class="row-fluid">
                        <div class="span12">
                        </div>
                    </div>
                    <div class="row-fluid">
                        <div class="span12">
                            <div class="form-horizontal form-large">
                                <h3 class="title-divider">
                                    <span>Search Client Information</span></h3>
                                <div class="span12">
                                    <div class="span5">
                                        <div class="control-group">
                                            <label class="control-label" for="First Name">
                                                First Name</label>
                                            <div class="controls">
                                                <asp:TextBox ID="txtFname" runat="server" placeholder="First Name"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="span5">
                                        <div class="control-group">
                                            <label class="control-label" for="Last Name">
                                                Last Name</label>
                                            <div class="controls">
                                                <asp:TextBox ID="txtLname" runat="server" placeholder="Last Name"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="span12">
                                    <div class="span5">
                                        <div class="control-group">
                                            <label class="control-label" for="Address">
                                                Phone</label>
                                            <div class="controls">
                                                <asp:TextBox ID="txtPhone" runat="server" placeholder="Phone"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="span5">
                                        <div class="control-group">
                                            <label class="control-label" for="Address">
                                                Email</label>
                                            <div class="controls">
                                                <asp:TextBox ID="txtEmail" runat="server" placeholder="Email"></asp:TextBox>
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
                                                <asp:TextBox ID="txtSsn1" runat="server" Text="XXX" CssClass="span2"></asp:TextBox>
                                                -
                                                <asp:TextBox ID="txtSsn2" runat="server" Text="XXX" CssClass="span3"></asp:TextBox>
                                                -
                                                <asp:TextBox ID="txtSsn3" CssClass="span4" placeholder="Last 4 Digits" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="span5">
                                        <div class="control-group">
                                            <label class="control-label" for="inputEmail">
                                                Client ID</label>
                                            <div class="controls">
                                                <asp:TextBox ID="txtClient" runat="server" placeholder="Client ID"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="control-group  text-center">
                                    <div class="controls">
                                        <asp:Button ID="btnSearch" runat="server" CssClass="btn btn-success submit" Text="Search" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <br />
                    <br />
                    <div class="row-fluid">
                        <div class="span12">
                            <div class="form-horizontal form-large">
                                <h3 class="title-divider">
                                    <span>Search Results</span></h3>
                                <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped table-bordered table-condensed"
                                    GridLines="None" AutoGenerateColumns="False">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                        <asp:BoundField DataField="SSN" HeaderText="SSN" SortExpression="SSN" />
                                        <asp:BoundField DataField="ClientID" HeaderText="Client ID" SortExpression="Days of Week" />
                                        <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Time" />
                                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="End Date" />
                                        <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="End Date" />
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <asp:LinkButton ID="rb" Text="Select" runat="server" GroupName="pp"></asp:LinkButton></ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                </asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
