<%@ Page Title="" Language="C#" MasterPageFile="~/web/CSR/CustomerService.Master" AutoEventWireup="true" CodeBehind="ChangeLender-Change-step2-1.aspx.cs" Inherits="IDPRO.ChangeLender_Change_step2_1" %>
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
                                        <span>Existing Lender Information</span></h3>
                                    <div class="span12">
                                        <div class="control-group">
                                            <label class="control-label csf-label" for="Creditor Full Name">
                                                Lender Name:</label>
                                            <div class="controls">
                                                <asp:Label ID="lblname" runat="server" CssClass="csf" Text="0000000"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label csf-label" for="Creditor Full Name">
                                                Loan Amount:</label>
                                            <div class="controls">
                                                <asp:Label ID="Label1" runat="server" CssClass="csf" Text="Name Bank"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label csf-label" for="Creditor Full Name">
                                                Phone Number:</label>
                                            <div class="controls">
                                                <asp:Label ID="Label2" runat="server" CssClass="csf" Text="120 558 1258"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label csf-label" for="Creditor Full Name">
                                                Fax Number:</label>
                                            <div class="controls">
                                                <asp:Label ID="Label3" runat="server" CssClass="csf" Text="Bank Account"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label csf-label" for="Creditor Full Name">
                                                Third Party:</label>
                                            <div class="controls">
                                                <asp:Label ID="Label4" runat="server" CssClass="csf" Text="Bank Account"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label csf-label" for="Creditor Full Name">
                                                3rd Party Phone:</label>
                                            <div class="controls">
                                                <asp:Label ID="Label5" runat="server" CssClass="csf" Text="Bank Account"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label csf-label" for="Creditor Full Name">
                                                3rd Party Fax:</label>
                                            <div class="controls">
                                                <asp:Label ID="Label6" runat="server" CssClass="csf" Text="Bank Account"></asp:Label>
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
                                        <span>New Lender Information</span></h3>
                                    <div class="span12">
                                        <div class="control-group">
                                            <label class="control-label label120" for="Bank Routing No">
                                                Lender Name</label>
                                            <div class="controls">
                                                <asp:TextBox ID="txtlenderName" runat="server" placeholder="Lender Name"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label label120" for="Bank Routing No">
                                                Loan Amount</label>
                                            <div class="controls">
                                                <asp:TextBox ID="txtloanAmount" runat="server" placeholder="Loan Amount"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label label120" for="Bank Name ">
                                                Phone Number</label>
                                            <div class="controls">
                                                <asp:TextBox ID="txtPhoneNumber" runat="server" placeholder="Phone Number"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label label120" for="Bank Account Number">
                                                Fax Number</label>
                                            <div class="controls">
                                                <asp:TextBox ID="txtFaxNo" runat="server" placeholder="Fax Number"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label label120" for="inputEmail">
                                                Third Party</label>
                                            <div class="controls">
                                                <asp:TextBox ID="txtThirdParty" runat="server" placeholder="Third Party"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label label120" for="inputEmail">
                                                3rd Party Phone</label>
                                            <div class="controls">
                                                <asp:TextBox ID="txtpartyPhone" runat="server" placeholder="3rd Party Phone"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label label120" for="inputEmail">
                                               3rd Party Fax</label>
                                            <div class="controls">
                                                <asp:TextBox ID="txtpartyFax" runat="server" placeholder="3rd Party Fax"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="control-group text-center">
                                            <div class="controls">
                                                <asp:Button ID="btnSave" CssClass="btn btn-success submit" OnClick="btnSave_Click"
                                                    Text="Update" runat="server" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                
</asp:Content>
