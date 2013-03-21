<%@ Page Title="" Language="C#" MasterPageFile="~/web/CSR/CustomerService.Master" AutoEventWireup="true" CodeBehind="FSKIDcancel-step1-3-11.aspx.cs" Inherits="IDPRO.FSKIDcancel_step1_3_11" %>
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
                                    <div class="span8 form-horizontal">
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
                                                    <b><a href="FSKIDcancel-step1-3-1.aspx">Back</a></b>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
               
</asp:Content>
