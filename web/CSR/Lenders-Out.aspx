<%@ Page Title="" Language="C#" MasterPageFile="~/web/CSR/CustomerService.Master" AutoEventWireup="true" CodeBehind="Lenders-Out.aspx.cs" Inherits="IDPRO.Lenders_Out" %>
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
                                        Is there anything else i can help you with ?
                                    </p>
                                </blockquote>
                            </div>
                            <div class="span12">
                                <div class="row-fluid">
                                    <div class="span10 form-horizontal">
                                        <div class="span12">
                                            <div class="control-group">
                                                <asp:RadioButtonList ID="rdb" runat="server" CssClass="radio inline" RepeatDirection="Vertical">
                                                    <asp:ListItem Text="Yes" Value="1" Selected="True" />
                                                    <asp:ListItem Text="No" Value="2" />
                                                </asp:RadioButtonList>
                                            </div>
                                            <div class="control-group  text-center">
                                                <div class="controls">
                                                    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" CssClass="btn btn-success submit" />
                                                    <b><a href="Lenders-AddLenderStep2-2.aspx">Back</a></b>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
               
</asp:Content>
