<%@ Page Title="" Language="C#" MasterPageFile="~/web/CSR/CustomerService.Master" AutoEventWireup="true"
    CodeBehind="Lenders-Threatening-Step12.aspx.cs" Inherits="IDPRO.web.CSR.Lenders_Threatening_Step12" %>

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
                                        Have you been server court documents in person?
                                    </p>
                                </blockquote>
                            </div>
                            <asp:UpdatePanel ID="update1" runat="server">
                                <ContentTemplate>
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
                                            <span style="float: right;"><b><a href="Lenders-Threatening-Step1.aspx">Back</a></b> </span>
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
                                                        Mr. Customer, I know that must be disconcerting. We need you to fax those documents
                                                        right over so our negotiations manager can take a look at them. Please fax them
                                                        to 888.276.9410, and call me once you have faxed them so I know they have arrived.
                                                        After our negotiations manager contacts you, I will give you a call back to let
                                                        you know what we find.
                                                    </p>
                                                </blockquote>
                                            </div>
                                        </asp:Panel>
                                        <asp:Panel ID="pnlCourtesy3" runat="server" Visible="false">
                                            <div class="span10 cs">
                                                <blockquote class="example-right">
                                                    <p>
                                                        Are they threatening to sue you, or are they threatening criminal action?
                                                    </p>
                                                </blockquote>
                                            </div>
                                        </asp:Panel>
                                        <asp:Panel ID="pnlNo" runat="server" Visible="false">
                                            <div class="span10 cs">
                                                <blockquote class="example-right">
                                                    <p>
                                                        Mr. Customer, the threat of legal actions is a standard collection attempt. It is
                                                        important to keep in mind that in a vast majority of cases, payday lenders will
                                                        not sue. They threaten to sue because they know it is an effective scare tactic
                                                        to get a payment from you.
                                                    </p>
                                                </blockquote>
                                            </div>
                                        </asp:Panel>
                                        <asp:Panel ID="pnlNoans" runat="server" Visible="false">
                                            <div class="span10 cs">
                                                <blockquote class="example-right">
                                                    <p>
                                                        We have never had a customer who was arrested for a payday loan. If they have heavy
                                                        foreign accents, you can disregard these calls.
                                                    </p>
                                                </blockquote>
                                            </div>
                                        </asp:Panel>
                                        <asp:Panel ID="pnlaccountchange" runat="server" Visible="false">
                                            <div class="span10 form-horizontal">
                                                <asp:RadioButtonList ID="rdbSure" runat="server" CssClass="radio inline" RepeatDirection="Vertical">
                                                    <asp:ListItem Text="To sue me!" Selected="True" Value="1" />
                                                    <asp:ListItem Text="To arrest me!" Value="2" />
                                                </asp:RadioButtonList>
                                                <br />
                                                <br />
                                                <asp:Button ID="btnyes" runat="server" CssClass="btn btn-success submit" Text="Select"
                                                    OnClick="btnyes_Click" />
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
