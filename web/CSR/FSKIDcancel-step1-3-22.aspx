<%@ Page Title="" Language="C#" MasterPageFile="~/web/CSR/CustomerService.Master" AutoEventWireup="true"
    CodeBehind="FSKIDcancel-step1-3-22.aspx.cs" Inherits="IDPRO.FSKIDcancel_step1_3_22" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     
                        <div class="span11">
                            <div class="span8 cs">
                                <blockquote class="example-right">
                                    <p>
                                        I’m sorry to hear that; I will need to track the kit, and have a supervisor call
                                        you back in reference to a refund, and to cancel the kit. Tracking the kit can take
                                        3 – 5 days, so please be patient!
                                    </p>
                                </blockquote>
                            </div>
                        </div>
                        <div class="span12">
                            <div class="row-fluid">
                                <div class="span5 form-horizontal">
                                    <h3 class="title-divider">
                                        <span>Select Below</span></h3>
                                    <div class="span12">
                                        <div class="control-group">
                                            <asp:RadioButtonList ID="rdb" runat="server" CssClass="radio inline" RepeatDirection="Vertical">
                                                <asp:ListItem Text="Yes" Value="1" />
                                                <asp:ListItem Text="No" Value="2" />
                                            </asp:RadioButtonList>
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
