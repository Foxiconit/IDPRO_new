<%@ Page Title="" Language="C#" MasterPageFile="~/web/CSR/CustomerService.Master" AutoEventWireup="true"
    CodeBehind="PaymentModify-all-step1-22-4.aspx.cs" Inherits="IDPRO.PaymentModify_all_step1_22_4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
                           <div class="span5">
                            <div class="row-fluid">
                                <div class="span12 cs">
                                    <blockquote class="example-right">
                                        <p>
                                     Which day of the week?

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
                                             <asp:RadioButtonList ID="RadioButtonList1" runat="server" CssClass="radio inline" RepeatDirection="Vertical">
                                                <asp:ListItem Text="Monday" Selected="True" Value="1" />
                                                <asp:ListItem Text="Tuesday" Value="2" />
                                                <asp:ListItem Text="Wednesday" Value="3" />
                                                <asp:ListItem Text="Thursday" Value="4" />
                                                <asp:ListItem Text="Friday" Value="5"></asp:ListItem>
                                                <asp:ListItem Text="Saturday" Value="6"></asp:ListItem>
                                                <asp:ListItem Value="7" Text="Sunday"></asp:ListItem>
                                            </asp:RadioButtonList>
                                        </div>
                                        <div class="control-group  text-center">
                                            <div class="controls">
                                                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" CssClass="btn btn-success submit" /><b><a
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
                        <%--<div class="span12">
                            <div class="row-fluid">
                                <div class="span5 form-horizontal">
                                    <h3 class="title-divider">
                                        <span>Payment Modify Drafts(ALL)</span></h3>
                                    <div class="span12">
                                        <div class="control-group">
                                            <asp:RadioButtonList ID="rdb" runat="server" CssClass="radio inline" RepeatDirection="Vertical">
                                                <asp:ListItem Text="Monday" Selected="True" Value="1" />
                                                <asp:ListItem Text="Tuesday" Value="2" />
                                                <asp:ListItem Text="Wednesday" Value="3" />
                                                <asp:ListItem Text="Thursday" Value="4" />
                                                <asp:ListItem Text="Friday" Value="5"></asp:ListItem>
                                                <asp:ListItem Text="Saturday" Value="6"></asp:ListItem>
                                                <asp:ListItem Value="7" Text="Sunday"></asp:ListItem>
                                            </asp:RadioButtonList>
                                        </div>
                                        <div class="control-group  text-center">
                                            <div class="controls">
                                                
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>--%>
                   
</asp:Content>
