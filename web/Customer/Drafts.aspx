<%@ Page Title="" Language="C#" MasterPageFile="~/web/Customer/Customer.Master" AutoEventWireup="true"
    CodeBehind="Drafts.aspx.cs" Inherits="IDPRO.web.Customer.Drafts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="row-fluid">
        <div class="span12">
            <div class="form-horizontal form-large">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" CssClass="form-inline span12 draft-radio"
                    RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True">All</asp:ListItem>
                    <asp:ListItem>Drafts</asp:ListItem>
                    <asp:ListItem>Fees</asp:ListItem>
                    <asp:ListItem>Payments</asp:ListItem>
                </asp:RadioButtonList>
                <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped table-bordered table-condensed"
                    GridLines="None" AutoGenerateColumns="False">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="EffectiveDate" HeaderText="Date" />
                        <asp:BoundField DataField="Memo" HeaderText="Transaction Type" />
                        <asp:BoundField DataField="Amount" HeaderText="Amount" />
                        <asp:BoundField DataField="Status" HeaderText="Status" />
                        <asp:BoundField DataField="UpdatedBy" HeaderText="Updated By" />
                        <asp:BoundField DataField="UpdatedDate" HeaderText="Updated Date" />
                        <asp:BoundField DataField="Memo" HeaderText="Memo" />
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
    <br />
    <%--<div class="row-fluid">
                        <div class="span3 offset5">
                            <asp:Button ID="btn" runat="server" Text="Save & Next" CssClass="btn btn-success submit" />
                        </div>
                    </div>--%>
</asp:Content>
