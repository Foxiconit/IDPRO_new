<%@ Page Title="" Language="C#" MasterPageFile="~/web/CSR/CustomerService.Master" AutoEventWireup="true"
    CodeBehind="PaymentModify-all-step1-23.aspx.cs" Inherits="IDPRO.PaymentModify_all_step1_23" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
                           <div class="span5">
                            <div class="row-fluid">
                                <div class="span12 cs">
                                    <blockquote class="example-right">
                                        <p>
                                           How much would you like your payments to be?
                                        </p>
                                    </blockquote>
                                </div>
                            </div>
                            <div class="row-fluid">
                                <div class="span12 form-horizontal">
                                    <h3 class="title-divider">
                                        <span>Payment Modify Drafts(ALL)</span></h3>
                                    <div class="span12">
                                        <div class="control-group">
                                            <asp:RadioButtonList ID="rdb" runat="server" CssClass="radio inline" RepeatDirection="Vertical">
                                                <asp:ListItem Text="Monthly" Selected="True" Value="1" />
                                                <asp:ListItem Text="Semi-Monthly" Value="2" />
                                                <asp:ListItem Text="Bi-Weekly" Value="3"></asp:ListItem>
                                                <asp:ListItem Text="Weekly" Value="4"></asp:ListItem>
                                            </asp:RadioButtonList> 
                                             <div class="control-group">
                                              <asp:TextBox ID="txtamount" runat="server" placeholder="Enter Amount"></asp:TextBox>
                                        </div>  </div>
                                        <div class="control-group  text-center">
                                            <div class="controls">
                                                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" CssClass="btn btn-success submit" /><b><a
                                                    href="PaymentModify-all-step1-2.aspx">Back</a></b>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="span6">
                            <div class="row-fluid">
                                <asp:Panel ID="pnlmonthly" runat="server" Visible="false">
                                    <div class="span12 cs">
                                        <blockquote class="example-right">
                                            <p>
                                               Mr. Customer, I can have our accounting department calculate the changes necessary to reduce your payment to this amount.  We often need to extend the length of your program, remove lenders from the program, or combine those tactics to permanently reduce your payment amount.  We will be in contact within 24-48 hours to advise you of the necessary changes, and obtain your consent to modify your program.

                                            </p>
                                        </blockquote>
                                    </div>
                                </asp:Panel>
                            </div>
                        </div>
                    
</asp:Content>
