<%@ Page Title="" Language="C#" MasterPageFile="~/web/CSR/CustomerService.Master" AutoEventWireup="true"
    CodeBehind="PaymentModify-all-step1-22-2.aspx.cs" Inherits="IDPRO.PaymentModify_all_step1_22_2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     
                        <div class="span5">
                            <div class="row-fluid">
                                <div class="span12 cs">
                                    <blockquote class="example-right">
                                        <p>
                                            What Dates?
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
                                            <asp:TextBox ID="TextBox1" runat="server" placeholder="1st Date"></asp:TextBox><br />
                                            <br />
                                            <asp:TextBox ID="TextBox2" runat="server" placeholder="2nd Date"></asp:TextBox>
                                        </div>
                                        <div class="control-group  text-center">
                                            <div class="controls">
                                                <asp:Button ID="Button2" runat="server" Text="Submit" OnClick="Button1_Click" CssClass="btn btn-success submit" /><b><a
                                                    href="PaymentModify-all-step1-22.aspx">Back</a></b>
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
                                                Mr. Customer, I can absolutely make that change for you. I want to be sure you know
                                                that moving from [biweekly, weekly] payment schedule to a semi-monthly payment schedule
                                                will cause your draft to increase slightly. We will be in contact with you within
                                                48 hours to let you know your new draft amount, and get your approval before your
                                                next draft. If there is a draft scheduled between now and then, this change will
                                                not affect that draft.
                                            </p>
                                        </blockquote>
                                    </div>
                                </asp:Panel>
                            </div>
                        </div>
                    
</asp:Content>
