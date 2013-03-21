<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true"
    CodeBehind="ManageEmployee.aspx.cs" Inherits="IDPRO.ManageEmployee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row-fluid">
        <div class="span12">
            <div class="box">
                <div class="box-header">
                    <span class="title">Manage Employees</span>
                </div>
                <div class="box-content">
                    <div class="row-fluid">
                       <div class="span2 offset1">
                            Search by Last Name
                        </div>
                        <div class="span2">
                            <asp:TextBox ID="txtlast" runat="server" required pattern="[ a-zA-Z0-9,#.-/]+"></asp:TextBox>
                        </div>
                        <div class="span1" style="padding-left: 40px;">
                            <asp:Button ID="btnsearch" runat="server" CssClass="btn btn-success submit" Text="Go"
                                OnClick="btnsearch_Click" />
                        </div>
                        <div class="span2 offset4">
                            <a href="AddEmployee.aspx" class="btn btn-success submit">Add Employee</a>
                        </div>
                        <div class="span12">
                            <div class="row-fluid">
                                <div class="span12">
                                    <div class="form-horizontal form-large">
                                        <h3 class="title-divider">
                                            <span>Searched Employees</span></h3>
                                        <asp:GridView ID="grdemp" runat="server" CssClass="table table-striped table-bordered table-condensed"
                                            GridLines="None" AutoGenerateColumns="False">
                                            <AlternatingRowStyle BackColor="White" />
                                            <Columns>
                                                <asp:BoundField DataField="First_name" HeaderText="First Name" />
                                                <asp:BoundField DataField="Last_name" HeaderText="Last Name" />
                                                <asp:BoundField DataField="Title" HeaderText="Title" />
                                                <asp:BoundField DataField="Description" HeaderText="Description" />
                                                <asp:TemplateField HeaderText="Edit">
                                                    <ItemTemplate>
                                                        <a href='AddEmployee.aspx?empid=<%#Eval("Employee_Id") %>'>Edit </a>
                                                    </ItemTemplate>
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
        </div>
    </div>
</asp:Content>
