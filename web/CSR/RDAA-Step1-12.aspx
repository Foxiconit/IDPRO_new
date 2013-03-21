<%@ Page Title="" Language="C#" MasterPageFile="~/web/CSR/CustomerService.Master" AutoEventWireup="true"
    CodeBehind="RDAA-Step1-12.aspx.cs" Inherits="IDPRO.RDAA_Step1_12" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
                        <div class="span11">
                            <div class="span8 cs">
                                <blockquote class="example-right">
                                    <p>
                                        Mr. Customer, I am contacting you because your payment has been returned to us with
                                        a stop payment placed on it. When this happens, we must obtain your authorization
                                        to draft your account again. Please contact your bank to verify for them that our
                                        draft is authorized. I will have a document sent to you that will reauthorize us
                                        to draft your account. It is important that you sign this as soon as possible to
                                        restore draft ability to your account and get your program back on track.
                                    </p>
                                </blockquote>
                            </div>
                        </div>
                        <div class="span12">
                            <div class="row-fluid">
                                <div class="span5 form-horizontal">
                                    <h3 class="title-divider">
                                        <span>Account Update RDAA</span></h3>
                                    <div class="span12">
                                        <div class="control-group">
                                            <asp:RadioButtonList ID="rdb" runat="server" CssClass="radio inline" RepeatDirection="Vertical">
                                                <asp:ListItem Text="Send Authorization to Draft" Selected="True" Value="1" />
                                                <asp:ListItem Text="Customer Requests to Cancel" Value="2" />
                                            </asp:RadioButtonList>
                                        </div>
                                        <div class="control-group  text-center">
                                            <div class="controls">
                                                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" CssClass="btn btn-success submit" />
                                                
                                                      <span style="float: right;"><b><a href="RDAA-Step1-1.aspx">Back</a></b> </span>
                                              
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                 
</asp:Content>
