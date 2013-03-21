<%@ Page Title="" Language="C#" MasterPageFile="~/web/CSR/CustomerService.Master" AutoEventWireup="true"
    CodeBehind="Lenders-AddLenderStep2-2-2-1.aspx.cs" Inherits="IDPRO.Lenders_AddLenderStep2_2_2_1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
                        <div class="span11">
                            <div class="span8 cs">
                                <blockquote class="example-right">
                                    <p>
                                        Thank you for that information! How much is the loan?
                                    </p>
                                </blockquote>
                            </div>
                        </div>
                        <div class="span12">
                            <div class="row-fluid">
                                <div class="span5 form-horizontal">
                                    <h3 class="title-divider">
                                        <span>Loan Amout</span></h3>
                                    <div class="span12">
                                        <div class="control-group">
                                            <label class="control-label csf-label" for="Creditor Full Name">
                                                Loan Amount:</label>
                                            <div class="controls">
                                                <asp:TextBox ID="txtloan" runat="server" placeholder="Loan Amount"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="control-group  text-center">
                                            <div class="controls">
                                                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" CssClass="btn btn-success submit" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                  
</asp:Content>
