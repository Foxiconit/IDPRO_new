<%@ Page Title="" Language="C#" MasterPageFile="~/web/CSR/CustomerService.Master" AutoEventWireup="true"
    CodeBehind="EscalationUpsetCust-Step1.aspx.cs" Inherits="IDPRO.web.CSR.EscalationUpsetCust_Step1" %>

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
                                        Ms. Customer, may I ask why you are upset?
                                    </p>
                                </blockquote>
                            </div>
                            <asp:UpdatePanel ID="update1" runat="server">
                                <ContentTemplate>
                                    <div class="row-fluid">
                                        <div class="span10 form-horizontal">
                                            <asp:RadioButtonList ID="rdb" runat="server" CssClass="radio inline" RepeatDirection="Vertical">
                                                <asp:ListItem Text="My lenders are still calling me!" Selected="True" Value="1" />
                                                <asp:ListItem Text="My lenders said they don’t work with you" Value="2" />
                                                <asp:ListItem Text="You drafted me the wrong amount/on the wrong date/when you shouldn’t have"
                                                    Value="3" />
                                                <asp:ListItem Text="I want to talk to a manager!" Value="4"></asp:ListItem>
                                                <asp:ListItem Text="BBB/FTC, Attorney, etc." Value="5"></asp:ListItem>
                                            </asp:RadioButtonList>
                                            <br />
                                            <br />
                                            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" CssClass="btn btn-success submit" /> <span style="float: right;"><b><a
                                                href="CustomerService.aspx">Back</a></b></span>
                                        </div>
                                    </div>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </div>
                        <div class="span5">
                            <asp:UpdatePanel ID="update2" runat="server">
                                <ContentTemplate>
                                    <div class="row-fluid">
                                        <asp:Panel ID="pnlpayment" runat="server" Visible="false">
                                            <div class="span10 cs">
                                                <blockquote class="example-right">
                                                    <p>
                                                        Mr. Customer, we take your satisfaction very seriously. May I place you on hold
                                                        so I can get a manager to talk to you right away?
                                                    </p>
                                                </blockquote>
                                            </div>
                                        </asp:Panel>
                                        <asp:Panel ID="pnldrafting" runat="server" Visible="false">
                                            <div class="span10 cs">
                                                <blockquote class="example-right">
                                                    <p>
                                                        I’m sorry to hear that, Ms. Customer. Let me assure you that if we can determine
                                                        that the fault is ours, we will reimburse you for any fees that results.
                                                    </p>
                                                    <br />
                                                    <asp:Button ID="btnyes" runat="server" CssClass="btn btn-success submit" Text="Select"
                                                        OnClick="btnyes_Click" />
                                                </blockquote>
                                            </div>
                                        </asp:Panel>
                                    </div>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </div>
                    </div>
               
</asp:Content>
