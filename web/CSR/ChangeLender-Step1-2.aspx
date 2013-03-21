<%@ Page Title="" Language="C#" MasterPageFile="~/web/CSR/CustomerService.Master" AutoEventWireup="true"
    CodeBehind="ChangeLender-Step1-2.aspx.cs" Inherits="IDPRO.ChangeLender_Step1_2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
                        <div class="span11">
                            <div class="span8 cs">
                                <blockquote class="example-right">
                                    <p>
                                        And what will we be changing?
                                    </p>
                                </blockquote>
                            </div>
                        </div>
                        <div class="span12">
                            <div class="row-fluid">
                                <div class="span5 form-horizontal">
                                    <h3 class="title-divider">
                                        <span>Change/Remove Lender Information</span>
                                    </h3>
                                    <div class="span12">
                                        <div class="control-group">
                                            <asp:RadioButtonList ID="rdb" runat="server" CssClass="radio inline" RepeatDirection="Vertical">
                                                <asp:ListItem Text="Remove Lender" Selected="True" Value="1" />
                                                <asp:ListItem Text="Change Infomation" Value="2" />
                                            </asp:RadioButtonList>
                                        </div>
                                        <div class="control-group  text-center">
                                            <div class="controls">
                                                <asp:Button ID="Button1" runat="server" CssClass="btn btn-success submit" OnClick="Button1_Click"
                                                    Text="Select" />
                                                     <b><a href="ChangeLender-Step1.aspx">Back</a></b>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                   
</asp:Content>
