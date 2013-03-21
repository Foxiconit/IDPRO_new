<%@ Page Title="" Language="C#" MasterPageFile="~/web/CSR/CustomerService.Master"
    AutoEventWireup="true" CodeBehind="Lenders-AddLenderStep2-2.aspx.cs" Inherits="IDPRO.Lenders_AddLenderStep2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row-fluid">
        <div class="span10 cs">
            <blockquote class="example-right">
                <p>
                    "What lender you want to add? let me see if we already have it in our system."
                </p>
            </blockquote>
        </div>
        <div class="span10">
            <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped table-bordered table-condensed"
                GridLines="None" AutoGenerateColumns="False">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="Lender Name" />
                    <asp:BoundField DataField="AccountNumber" HeaderText="Account Number" />
                    <asp:BoundField DataField="LoanAmount" HeaderText="Loan Amount" />
                    <asp:BoundField DataField="LoanDate" HeaderText="Loan Date" />
                </Columns>
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
        </div>
    </div>
    <div class="row-fluid">
        <div class="span1">
        </div>
        <div class="span5">
            <div class="row-fluid">
                <div class="span10 form-horizontal">
                    <div class="span12">
                        <asp:UpdatePanel ID="uprdb" runat="server">
                            <ContentTemplate>
                                <div class="control-group">
                                    <asp:RadioButtonList ID="rdb" runat="server" CssClass="radio inline" AutoPostBack="true"
                                        RepeatDirection="Vertical" OnSelectedIndexChanged="rdb_SelectedIndexChanged">
                                        <asp:ListItem Text="Lender Exist" Value="1" />
                                        <asp:ListItem Text="Lender Not Exist" Value="2" Selected="True" />
                                    </asp:RadioButtonList>
                                </div>
                                <div class="control-group  text-center">
                                    <div class="controls">
                                        <asp:Button ID="Button1" runat="server" CssClass="btn btn-success submit" OnClick="Button1_Click"
                                            Text="Select" />
                                        <b><a href="Lenders-AddLenderStep1.aspx">Back</a></b>
                                    </div>
                                </div>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                </div>
                <div class="span10">
                    <asp:UpdatePanel ID="upnlnoexist" runat="server">
                        <ContentTemplate>
                            <asp:Panel ID="pnlnotexist" runat="server" Visible="false">
                                <div class="span10 cs">
                                    <blockquote class="example-right">
                                        <p>
                                            "I see We already have this Lender in your File. Do you want to add more loans from
                                            this Lender?"
                                        </p>
                                    </blockquote>
                                </div>
                                <div class="row-fluid">
                                    <div class="span10 form-horizontal">
                                        <div class="span12">
                                            <div class="control-group">
                                                <asp:RadioButtonList ID="rdb1" runat="server" CssClass="radio inline" RepeatDirection="Vertical">
                                                    <asp:ListItem Text="Yes" Value="1" Selected="True" />
                                                    <asp:ListItem Text="No" Value="2" />
                                                </asp:RadioButtonList>
                                            </div>
                                            <div class="control-group  text-center">
                                                <div class="controls">
                                                    <asp:Button ID="Button2" runat="server" CssClass="btn btn-success submit" Text="Select"
                                                        OnClick="Button2_Click" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </asp:Panel>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
            </div>
        </div>
    </div>
  
</asp:Content>
