<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true"
    CodeBehind="RDAANotRequired.aspx.cs" Inherits="IDPRO.RDAANotRequired" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row-fluid">
        <div class="span12">
            <div class="box">
                <div class="box-header">
                    <span class="title">Customer Service</span>
                </div>
                <div class="box-content">
                    <div class="row-fluid">
                        <div class="span12">
                            <div class="tabbable margin-small">
                                <ul class="nav nav-tabs">
                                    <li class=""><a href="CustomerService.aspx">Home</a></li>
                                    <li class=""><a href="PersonalInfo.aspx">Personal Info</a></li>
                                    <li class=""><a href="Creditor.aspx">Creditor Info</a></li>
                                    <li class=""><a href="Plan.aspx">Plan Info</a></li>
                                    <li class=""><a href="BankInfo.aspx">Bank Info</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="span11">
                            <div class="span8 cs">
                                <blockquote class="example-right">
                                    <p>
                                        Thank you! To confirm, the routing number is [routing number] and the account number
                                        is [account number].
                                    </p>
                                </blockquote>
                            </div>
                        </div>
                        <div class="span12">
                            <div class="row-fluid">
                                <div class="span4 form-horizontal">
                                    <asp:RadioButtonList ID="rdb" runat="server" CssClass="radio inline" RepeatDirection="Vertical">
                                        <asp:ListItem Text="RDAA Not Required" Value="1" />
                                        <asp:ListItem Text="RDAA Required" Value="2" />
                                    </asp:RadioButtonList>
                                    <br />
                                    <br />
                                    <asp:Button ID="Button1" runat="server" CssClass="btn btn-success submit" Text="Select" />
                                    <br />
                                    <br />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
