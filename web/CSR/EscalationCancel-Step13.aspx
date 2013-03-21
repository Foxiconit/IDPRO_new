<%@ Page Title="" Language="C#" MasterPageFile="~/web/CSR/CustomerService.Master" AutoEventWireup="true"
    CodeBehind="EscalationCancel-Step13.aspx.cs" Inherits="IDPRO.web.CSR.EscalationCancel_Step13" %>

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
                                        I’m sorry to hear that, Ms. Customer. I know times are tough, but I have great news!
                                        We can temporarily modify your payments to get you through this tough time; would
                                        that help?
                                    </p>
                                </blockquote>
                            </div>
                            <asp:UpdatePanel ID="update1" runat="server">
                                <ContentTemplate>
                                    <div class="row-fluid">
                                        <div class="span10 form-horizontal">
                                            <asp:RadioButtonList ID="rdb" runat="server" CssClass="radio inline" RepeatDirection="Vertical">
                                                <asp:ListItem Text="Yes!" Value="1" Selected="True" />
                                                <asp:ListItem Text="No!" Value="2" />
                                            </asp:RadioButtonList>
                                            <br />
                                            <br />
                                            <asp:Button ID="Button1" runat="server" CssClass="btn btn-success submit" Text="Select"
                                                OnClick="Button1_Click" />
                                            <span style="float: right;"><b><a href="EscalationCancel-Step11.aspx">Back</a></b>
                                            </span>
                                        </div>
                                    </div>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </div>
                        <div class="span5">
                            <%--<div class="span10 cs ">
                                <h6 style="padding-top: 50px;">
                                    Select</h6>
                                skkksmmms
                            </div>--%>
                            <asp:UpdatePanel ID="update2" runat="server">
                                <ContentTemplate>
                                    <div class="row-fluid">
                                        <asp:Panel ID="pnlpayment" runat="server" Visible="false">
                                            <div class="span10 cs">
                                                <blockquote class="example-right">
                                                    <p>
                                                        Great!
                                                    </p>
                                                </blockquote>
                                            </div>
                                        </asp:Panel>
                                        <asp:Panel ID="pnlaccountchange" runat="server" Visible="false">
                                            <div class="span10 cs">
                                                <blockquote class="example-right">
                                                    <p>
                                                        I understand. Let me get a cancellation manager for you!
                                                    </p>
                                                </blockquote>
                                            </div>
                                            <div class="span10 form-horizontal">
                                                <asp:RadioButtonList ID="rdbNO" runat="server" CssClass="radio inline" RepeatDirection="Vertical">
                                                    <asp:ListItem Text="Manager Available" Selected="True" Value="1" />
                                                    <asp:ListItem Text="No one Available" Value="2" />
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
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </div>
                    </div>
                
</asp:Content>
