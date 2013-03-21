<%@ Page Title="" Language="C#" MasterPageFile="~/web/Customer/Customer.Master" AutoEventWireup="true"
    CodeBehind="BankInfo.aspx.cs" Inherits="IDPRO.web.Customer.BankInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     
                        <div class="span6 offset2">
                            <div class="form-horizontal form-large">
                                <h3 class="title-divider">
                                    <span>Bank Information</span></h3>
                                <div class="control-group">
                                    <label class="control-label" for="Bank Routing No">
                                        Bank Routing No</label>
                                    <div class="controls">
                                        <asp:TextBox ID="txtbankRouting" runat="server" placeholder="Bank Routing No"></asp:TextBox>
                                        <asp:Button ID="btnCheck" runat="server" CssClass="btn" Text="Check" />
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="Bank Name ">
                                        Bank Name</label>
                                    <div class="controls">
                                        <asp:TextBox ID="txtBankName" runat="server" placeholder="Bank Name" disabled="disabled"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="Bank Account Number">
                                        Bank Account No.</label>
                                    <div class="controls">
                                        <asp:TextBox ID="txtBankAcc" runat="server" placeholder="Bank Account Number"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="inputEmail">
                                        Bank Account type</label>
                                    <div class="controls">
                                        <asp:DropDownList ID="ddltype" runat="server">
                                            <asp:ListItem Text="Checking"></asp:ListItem>
                                            <asp:ListItem Text="Saving"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="inputEmail">
                                        Send To GCS</label>
                                    <div class="controls">
                                        <asp:DropDownList ID="DropDownList1" CssClass="span2" runat="server">
                                            <asp:ListItem Text="Yes"></asp:ListItem>
                                            <asp:ListItem Text="No"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                 <div class="control-group">
                                    <label class="control-label" for="inputEmail">
                                        Disable ACH</label>
                                    <div class="controls">
                                        <asp:DropDownList ID="DropDownList2" CssClass="span2" runat="server">
                                            <asp:ListItem Text="Yes"></asp:ListItem>
                                            <asp:ListItem Text="No"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="control-group text-center">
                                    <div class="controls">
                                        <asp:Button ID="btnSave" CssClass="btn btn-success submit" Text="Update" runat="server"
                                            OnClick="btnSave_Click" />
                                    </div>
                                </div>
                            </div>
                        </div>
                   
</asp:Content>
