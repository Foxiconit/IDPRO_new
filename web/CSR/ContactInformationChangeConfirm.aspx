<%@ Page Title="" Language="C#" MasterPageFile="~/web/CSR/CustomerService.Master" AutoEventWireup="true"
    CodeBehind="ContactInformationChangeConfirm.aspx.cs" Inherits="IDPRO.ContactInformationChangeConfirm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     
                        <div class="span11">
                            <div class="span8 cs">
                                <blockquote class="example-right">
                                    <p>
                                        "I have Successfully Updated your contact information. Is there anything else i
                                        can do for you??"
                                    </p>
                                </blockquote>
                            </div>
                        </div>
                        <div class="span12">
                            <div class="row-fluid">
                                <div class="span5 form-horizontal">
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
                                                <b><a href="ContactInformationChange.aspx">Back</a></b>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                  
</asp:Content>
