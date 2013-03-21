<%@ Page Title="" Language="C#" MasterPageFile="~/web/CSR/CustomerService.Master" AutoEventWireup="true"
    CodeBehind="BankingInformationChange2.aspx.cs" Inherits="IDPRO.BankingInformationChange2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
                        <div class="span11">
                            <div class="span8 cs">
                                <blockquote class="example-right">
                                    <p>
                                      Thank you! And the account number?
                                    </p>
                                </blockquote>
                            </div>
                        </div>
                        <div class="span12">
                            <div class="row-fluid">
                                <div class="span5 form-horizontal">
                                    <h3 class="title-divider">
                                        <span>Banking Information</span></h3>
                                    <div class="span12">
                                        <div class="span12">
                                            <div class="control-group">
                                                <label class="control-label csf-label" for="Creditor Full Name">
                                                    Account Number:</label>
                                                <div class="controls">
                                                    <asp:TextBox ID="txtRouting" runat="server" placeholder="Account Number"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="control-group  text-center">
                                                <div class="controls">
                                                    <asp:Button ID="Button1" runat="server" Text="Submit"  onclick="Button1_Click"  CssClass="btn btn-success submit" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    
</asp:Content>
