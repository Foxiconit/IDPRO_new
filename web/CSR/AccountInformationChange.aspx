<%@ Page Title="" Language="C#" MasterPageFile="~/web/CSR/CustomerService.Master" AutoEventWireup="true"
    CodeBehind="AccountInformationChange.aspx.cs" Inherits="IDPRO.AccountInformationChange" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 
                        <div class="span11">
                            <div class="span8 cs">
                                <blockquote class="example-right">
                                    <p>
                                        You are requesting to change information about your account. I am happy to assist
                                        you with this. What will we be changing?
                                    </p>
                                </blockquote>
                            </div>
                        </div>
                        <div class="span12">
                            <div class="row-fluid">
                                <div class="span4 form-horizontal">
                                    <asp:RadioButtonList ID="rdb" runat="server" CssClass="radio inline" RepeatDirection="Vertical">
                                        <asp:ListItem Text="Contact Information" Value="1" Selected="True" />
                                        <asp:ListItem Text="Banking Information" Value="2" />
                                    </asp:RadioButtonList>
                                    <br />
                                    <br />
                                    <asp:Button ID="Button1" runat="server" CssClass="btn btn-success submit" onclick="Button1_Click" Text="Select" />
                                   <span style="float:right;"><b><a href="CustomerService.aspx">Back</a></b> </span>
                                </div>
                            </div>
                        </div>
                  
</asp:Content>
