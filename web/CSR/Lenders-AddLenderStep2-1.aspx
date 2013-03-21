<%@ Page Title="" Language="C#" MasterPageFile="~/web/CSR/CustomerService.Master" AutoEventWireup="true"
    CodeBehind="Lenders-AddLenderStep2-1.aspx.cs" Inherits="IDPRO.Lenders_AddLenderStep2_1" %>

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
                                        Mrs. Customer, we require you to have cleared the last four drafts successfully
                                        before adding lenders into the program. I’m sorry to say that is not the case on
                                        your account. Please give me a call back when you have cleared at least four consecutive
                                        drafts, and we will revisit adding lenders into your program.
                                    </p>
                                </blockquote>
                            </div>
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
                                                    <b><a href="Lenders-AddLenderStep1.aspx">Back</a></b>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                
</asp:Content>
