<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true"
    CodeBehind="ClientDistributions.aspx.cs" Inherits="IDPRO.ClientDistributions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row-fluid">
        <div class="span12">
            <div class="box">
                <div class="box-header">
                    <span class="title">Orientation</span>
                </div>
                <div class="box-content">
                    <div class="row-fluid">
                        <div class="span12">
                            <div class="tabbable">
                                <ul class="nav nav-tabs">
                                    <li class="active"><a href="ClientDistributions.aspx">Distribute Clients</a></li>
                                    <li class=""><a href="Orientation.aspx">Orientation</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="span12">
                            <div class="form-horizontal form-large">
                                <h3 class="title-divider">
                                    <span>Client Distribtion</span></h3>
                                <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped table-bordered table-condensed"
                                    GridLines="None" AutoGenerateColumns="False">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:BoundField DataField="ClientID" HeaderText="Client ID" SortExpression="Days of Week" />
                                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                        <asp:BoundField DataField="Date" HeaderText="Sales Date" SortExpression="Sales Date" />
                                        <asp:TemplateField>
                                            <HeaderTemplate>
                                                Select a Representative</HeaderTemplate>
                                            <ItemTemplate>
                                                <asp:DropDownList ID="DropDownList1" runat="server">
                                                    <asp:ListItem>Select a Rep.</asp:ListItem>
                                                    <asp:ListItem>Rep. 1</asp:ListItem>
                                                    <asp:ListItem>Rep. 2</asp:ListItem>
                                                    <asp:ListItem>Rep. 3</asp:ListItem>
                                                    <asp:ListItem>Rep. 4</asp:ListItem>
                                                </asp:DropDownList>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField>
                                            <HeaderTemplate>
                                                Action</HeaderTemplate>
                                            <ItemTemplate>
                                                <asp:LinkButton ID="rb" Text="Assign" runat="server" GroupName="pp"></asp:LinkButton>
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
</asp:Content>
