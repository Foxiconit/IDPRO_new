<%@ Page Title="" Language="C#" MasterPageFile="~/web/CSR/CustomerService.Master" AutoEventWireup="true"
    CodeBehind="BankingInformationChange.aspx.cs" Inherits="IDPRO.BankingInformationChange" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
                    <div class="row-fluid">
                        <div class="span1">
                        </div>
                        <div class="span5">
                            <div class="span10 cs">
                                <blockquote class="example-right">
                                    <p>
                                        "Ok Sir ,This is what we have in our system."
                                    </p>
                                </blockquote>
                            </div>
                            <div class="row-fluid">
                                <div class="span10 form-horizontal">
                                    <h3 class="title-divider">
                                        <span>Existing Bank Information</span></h3>
                                    <div class="span12">
                                        <div class="control-group">
                                            <label class="control-label csf-label" for="Creditor Full Name">
                                                Bank Routing No:</label>
                                            <div class="controls">
                                                <asp:Label ID="lblname" runat="server" CssClass="csf" Text="0000000"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label csf-label" for="Creditor Full Name">
                                                Bank Name:</label>
                                            <div class="controls">
                                                <asp:Label ID="Label1" runat="server" CssClass="csf" Text="Name Bank"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label csf-label" for="Creditor Full Name">
                                                Bank Account No:</label>
                                            <div class="controls">
                                                <asp:Label ID="Label2" runat="server" CssClass="csf" Text="120 558 1258"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label csf-label" for="Creditor Full Name">
                                                Bank Account Type:</label>
                                            <div class="controls">
                                                <asp:Label ID="Label3" runat="server" CssClass="csf" Text="Bank Account"></asp:Label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="span6">
                            <div class="span10 cs">
                                <blockquote class="example-right">
                                    <p>
                                        "What would you like to change sir?"
                                    </p>
                                </blockquote>
                            </div>
                            <div class="row-fluid">
                                <div class="span10 form-horizontal">
                                    <h3 class="title-divider">
                                        <span>New Banking Information</span></h3>
                                    <div class="span12">
                                        <div class="control-group">
                                            <label class="control-label label120" for="Bank Routing No">
                                                Bank Routing No</label>
                                            <div class="controls">
                                                <asp:TextBox ID="txtbankRouting" runat="server" placeholder="Bank Routing No"></asp:TextBox>
                                                <asp:Button ID="btnCheck" runat="server" CssClass="btn" Text="Check" />
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label label120" for="Bank Name ">
                                                Bank Name</label>
                                            <div class="controls">
                                                <asp:TextBox ID="txtBankName" runat="server" placeholder="Bank Name" disabled="disabled"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label label120" for="Bank Account Number">
                                                Bank Account No.</label>
                                            <div class="controls">
                                                <asp:TextBox ID="txtBankAcc" runat="server" placeholder="Bank Account Number"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label label120" for="inputEmail">
                                                Bank Account type</label>
                                            <div class="controls">
                                                <asp:DropDownList ID="ddltype" runat="server">
                                                    <asp:ListItem Text="Checking"></asp:ListItem>
                                                    <asp:ListItem Text="Saving"></asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="control-group text-center">
                                            <div class="controls">
                                                <asp:Button ID="btnSave" CssClass="btn btn-success submit" Text="Update" runat="server"
                                                    OnClick="btnSave_Click" />
                                                    <b><a href="AccountInformationChange.aspx">Back</a></b>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
               
</asp:Content>
