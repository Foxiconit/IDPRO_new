<%@ Page Title="" Language="C#" MasterPageFile="~/web/CSR/CustomerService.Master" AutoEventWireup="true"
    CodeBehind="EscalationCancel-Step1.aspx.cs" Inherits="IDPRO.web.CSR.EscalationCancel_Step1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     
                        <div class="span11">
                            <div class="span8 cs">
                                <blockquote class="example-right">
                                    <p>
                                        Ms. Customer, may I ask why you are requesting to cancel your account with us?
                                    </p>
                                </blockquote>
                            </div>
                        </div>
                        <div class="span12">
                            <div class="row-fluid">
                                <div class="span5 form-horizontal">
                                    <h3 class="title-divider">
                                        <span>Escalations Cancel Request</span></h3>
                                    <div class="span12">
                                        <div class="control-group">
                                            <asp:RadioButtonList ID="rdb" runat="server" CssClass="radio inline" RepeatDirection="Vertical">
                                                <asp:ListItem Text="My lenders are still calling me!" Selected="True" Value="1" />
                                                <asp:ListItem Text="My lenders said they don’t work with you" Value="2" />
                                                <asp:ListItem Text="I’m having financial difficulty" Value="3" />
                                                <asp:ListItem Text="Other/I just want to cancel!" Value="4"></asp:ListItem>
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
