<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true"
    CodeBehind="BankInfo.aspx.cs" Inherits="IDPRO.BankInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row-fluid">
        <div class="span12">
            <div class="box">
                <div class="box-header">
                    <span class="title">Customer Overview</span>
                </div>
                <div class="box-content">
                    <div class="row-fluid">
                        <div class="span12">
                            <div class="span3 cr-horizontal">
                                <div class="span12">
                                    <div class="control-group">
                                        <label class="control-label" for="First Name">
                                            Name :</label>
                                        <div class="controls">
                                            <asp:Label ID="Label4" runat="server" Text="John Michal"></asp:Label>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label" for="First Name">
                                            Account Id :</label>
                                        <div class="controls">
                                            <asp:Label ID="Label1" runat="server" Text="125 558821"></asp:Label>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label" for="First Name">
                                            Status :</label>
                                        <div class="controls">
                                            <asp:Label ID="Label2" runat="server" Text="Active"></asp:Label>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label" for="First Name">
                                            SSN :</label>
                                        <div class="controls">
                                            <asp:Label ID="Label3" runat="server" Text="000 999 0000"></asp:Label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="span3 cr-horizontal">
                                <div class="span12">
                                    <div class="control-group">
                                        <label class="control-label" for="First Name">
                                            Total Debt Loaded :</label>
                                        <div class="controls">
                                            <asp:Label ID="Label5" runat="server" Text="$2000"></asp:Label>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label" for="First Name">
                                            Program Legnth :</label>
                                        <div class="controls">
                                            <asp:Label ID="Label6" runat="server" Text="12 Months"></asp:Label>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label" for="First Name">
                                            Monthly payment :</label>
                                        <div class="controls">
                                            <asp:Label ID="Label7" runat="server" Text="$500"></asp:Label>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label" for="First Name">
                                            Program Type :</label>
                                        <div class="controls">
                                            <asp:Label ID="Label8" runat="server" Text="Full "></asp:Label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="span3 cr-horizontal">
                                <div class="span12">
                                    <div class="control-group">
                                        <label class="control-label" for="First Name">
                                            GCS Account No :</label>
                                        <div class="controls">
                                            <asp:Label ID="Label9" runat="server" Text="123-254587"></asp:Label>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label" for="First Name">
                                            Current Balance :</label>
                                        <div class="controls">
                                            <asp:Label ID="Label10" runat="server" Text="$25000"></asp:Label>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label" for="First Name">
                                            Available Money :</label>
                                        <div class="controls">
                                            <asp:Label ID="Label11" runat="server" Text="$50000"></asp:Label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="span3 cr-horizontal">
                                <div class="span12">
                                    <div class="control-group">
                                        <label class="control-label" for="First Name">
                                            Sales Rep :</label>
                                        <div class="controls">
                                            <asp:Label ID="Label12" runat="server" Text="Simon J"></asp:Label>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label" for="First Name">
                                            Negotiator :</label>
                                        <div class="controls">
                                            <asp:Label ID="Label13" runat="server" Text="No"></asp:Label>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label" for="First Name">
                                            CSR :</label>
                                        <div class="controls">
                                            <asp:Label ID="Label14" runat="server" Text="Empty"></asp:Label>
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
    <div class="row-fluid">
        <div class="span12">
            <div class="box">
                <div class="box-header">
                    <span class="title">New Sales</span>
                </div>
                <div class="box-content">
                    <div class="row-fluid">
                        <div class="span12">
                            <div class="tabbable">
                                <ul class="nav nav-tabs">
                                <li class=""><a href="SearchCustomer.aspx">Search Customer</a></li>
                                    <li class=""><a href="PersonalInfo.aspx">Personal Info</a></li>
                                    <li class=""><a href="Creditor.aspx">Creditor Info</a></li>
                                    <li class=""><a href="Plan.aspx">Plan Info</a></li>
                                    <li class="active"><a href="BankInfo.aspx">Bank Info</a></li>
                                </ul>
                            </div>
                        </div>
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
                                <div class="control-group text-center">
                                    <div class="controls">
                                        <asp:Button ID="btnSave" CssClass="btn btn-success submit" Text="Save" runat="server" />
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
