﻿<%@ Page Title="" Language="C#" MasterPageFile="~/web/CSR/CustomerService.Master" AutoEventWireup="true"
    CodeBehind="RDAA-Step1-11.aspx.cs" Inherits="IDPRO.RDAA_Step1_11" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
                        <div class="span11">
                            <div class="span8 cs">
                                <blockquote class="example-right">
                                    <p>
                                        We have received notice from our banking partner that the draft we attempted to
                                        pull from you was returned because your account is [frozen, closed]. We need to
                                        obtain updated banking information in order to continue your payments into the program.
                                        Do you have this handy?
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
                                                <asp:ListItem Text="Yes" Selected="True" Value="1" />
                                                <asp:ListItem Text="No" Value="2" />
                                            </asp:RadioButtonList>
                                        </div>
                                        <div class="control-group  text-center">
                                            <div class="controls">
                                                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" CssClass="btn btn-success submit" /><b><a
                                                    href="RDAA-Step1-1.aspx">Back</a></b>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
               
</asp:Content>
