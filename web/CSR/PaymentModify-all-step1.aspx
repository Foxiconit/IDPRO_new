<%@ Page Title="" Language="C#" MasterPageFile="~/web/CSR/CustomerService.Master" AutoEventWireup="true"
    CodeBehind="PaymentModify-all-step1.aspx.cs" Inherits="IDPRO.PaymentModify_all_step1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
                        <div class="span11">
                            <div class="span8 cs">
                                <blockquote class="example-right">
                                    <p>
                                        Ms. Customer, you are requesting to modify your future drafts. I will be happy to
                                        help you with this. Let me take a look at your account to see if you are currently
                                        on any payment plans with lenders.
                                    </p>
                                </blockquote>
                            </div>
                        </div>
                        <div class="span12">
                            <div class="row-fluid">
                                <div class="span5 form-horizontal">
                                    <h3 class="title-divider">
                                        <span>Payment Modify Drafts(ALL)</span></h3>
                                    <div class="span12">
                                        <div class="control-group">
                                            <asp:RadioButtonList ID="rdb" runat="server" CssClass="radio inline" RepeatDirection="Vertical">
                                                <asp:ListItem Text="Customer is on Payment Plan" Selected="True" Value="1" />
                                                <asp:ListItem Text="Customer not in a Payment Plan" Value="2" />
                                            </asp:RadioButtonList>
                                        </div>
                                        <div class="control-group  text-center">
                                            <div class="controls">
                                                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" CssClass="btn btn-success submit" /><b><a
                                                    href="CustomerService.aspx">Back</a></b>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                   
</asp:Content>
