<%@ Page Title="" Language="C#" MasterPageFile="~/web/CSR/CustomerService.Master" AutoEventWireup="true"
    CodeBehind="FSKIDcancel-step1-3-2.aspx.cs" Inherits="IDPRO.FSKIDcancel_step1_3_2" %>

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
                                        Mr. Customer, we sent you the Financial Success Kit on XYZ date. In order to receive
                                        a refund and cancel the FSK, all we need you to do is return the kit to us. Did
                                        you receive it?
                                    </p>
                                </blockquote>
                            </div>
                            <div class="row-fluid">
                                <div class="span10 form-horizontal">
                                    <asp:RadioButtonList ID="rdb" runat="server" CssClass="radio inline" RepeatDirection="Vertical">
                                        <asp:ListItem Text="Yes" Value="1" Selected="True" />
                                        <asp:ListItem Text="No" Value="2" />
                                    </asp:RadioButtonList>
                                    <br />
                                    <br />
                                    <asp:Button ID="Button1" runat="server" CssClass="btn btn-success submit" Text="Select"
                                        OnClick="Button1_Click" />
                                         <span style="float:right;"><b><a href="FSKIDcancel-step1-3.aspx">Back</a></b> </span>
                                    
                                </div>
                            </div>
                        </div>
                        <div class="span5">
                            <%--<div class="span10 cs ">
                                <h6 style="padding-top: 50px;">
                                    Select</h6>
                                skkksmmms
                            </div>--%>
                            <div class="row-fluid">
                                <asp:Panel ID="pnlpayment" runat="server" Visible="false">
                                    <div class="span10 cs">
                                        <blockquote class="example-right">
                                            <p>
                                                Great! Please return it to us at 7955 NW 12th St Ste 416, Doral FL 33126. When we
                                                receive the kit, we will issue a refund to your Global Client Solutions account,
                                                and cancel any remaining payments towards the kit. is there anything elase i can
                                                help you with?
                                            </p>
                                        </blockquote>
                                    </div>
                                    <div class="span10 form-horizontal">
                                        <asp:RadioButtonList ID="rdbyes" runat="server" CssClass="radio inline" RepeatDirection="Vertical">
                                            <asp:ListItem Text="Yes" Selected="True" Value="1" />
                                            <asp:ListItem Text="No" Value="2" />
                                        </asp:RadioButtonList>
                                        <br />
                                        <br />
                                          <asp:Button ID="btnyes" runat="server" CssClass="btn btn-success submit" Text="Select"
                                            OnClick="btnyes_Click" />
                                        <br />
                                        <br />
                                    </div>
                                </asp:Panel>
                                <asp:Panel ID="pnlaccountchange" runat="server" Visible="false">
                                    <div class="span10 cs">
                                        <blockquote class="example-right">
                                            <p>
                                                I’m sorry to hear that; I will need to track the kit, and have a supervisor call
                                                you back in reference to a refund, and to cancel the kit. Tracking the kit can take
                                                3 – 5 days, so please be patient! Is thereanything else i can help you with?
                                            </p>
                                        </blockquote>
                                    </div>
                                    <div class="span10 form-horizontal">
                                        <asp:RadioButtonList ID="rdbNO" runat="server" CssClass="radio inline"
                                            RepeatDirection="Vertical">
                                            <asp:ListItem Text="Yes" Selected="True" Value="1" />
                                            <asp:ListItem Text="No" Value="2" />
                                        </asp:RadioButtonList>
                                        <br />
                                        <br />
                                          <asp:Button ID="btnNO" runat="server" CssClass="btn btn-success submit" Text="Select"
                                            OnClick="btnNO_Click" />
                                        <br />
                                        <br />
                                    </div>
                                </asp:Panel>
                            </div>
                        </div>
                    </div>
                
    <%--<div class="row-fluid">
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
                                        Mr. Customer, we sent you the Financial Success Kit on XYZ date. In order to receive
                                        a refund and cancel the FSK, all we need you to do is return the kit to us. Did
                                        you receive it?
                                    </p>
                                </blockquote>
                            </div>
                        </div>
                        <div class="span12">
                            <div class="row-fluid">
                                <div class="span5 form-horizontal">
                                    <h3 class="title-divider">
                                        <span>FSK/IDPRO Cancel</span></h3>
                                    <div class="span12">
                                        <div class="control-group">
                                            <asp:RadioButtonList ID="rdb" runat="server" CssClass="radio inline" RepeatDirection="Vertical">
                                                <asp:ListItem Text="Yes" Selected="True" Value="1" />
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
                    </div>
                </div>
            </div>
        </div>
    </div>--%>
</asp:Content>
