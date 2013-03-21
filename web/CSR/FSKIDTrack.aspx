<%@ Page Title="" Language="C#" MasterPageFile="~/web/CSR/CustomerService.Master" AutoEventWireup="true"
    CodeBehind="FSKIDTrack.aspx.cs" Inherits="IDPRO.web.CSR.FSKIDTrack" %>

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
                                        Mr. Customer, I’m sorry to hear that you have not received your Financial Success
                                        Kit. I can definitely help you to resolve this issue; Let me first see if the kit
                                        has been sent to you yet!
                                    </p>
                                </blockquote>
                            </div>
                            <asp:UpdatePanel ID="update1" runat="server">
                                <ContentTemplate>
                                    <div class="row-fluid">
                                        <div class="span10 form-horizontal">
                                            <asp:RadioButtonList ID="rdb" runat="server" CssClass="radio inline" RepeatDirection="Vertical">
                                                <asp:ListItem Text="FSK Not Sent, Customer hasn’t paid at least $50 towards the kit"
                                                    Value="1" Selected="True" />
                                                <asp:ListItem Text="FSK Not Sent, Customer has paid at least $50 towards the kit"
                                                    Value="2" />
                                                <asp:ListItem Text="FSK Not Sent, Customer wishes to Cancel Kit" Value="3"></asp:ListItem>
                                                <asp:ListItem Text="FSK Sent < 4 weeks" Value="4"></asp:ListItem>
                                                <asp:ListItem Text="FSK Sent > 4 weeks" Value="5"></asp:ListItem>
                                            </asp:RadioButtonList>
                                            <br />
                                            <br />
                                            <asp:Button ID="Button1" runat="server" CssClass="btn btn-success submit" Text="Select"
                                                OnClick="Button1_Click" />
                                            <span style="float: right;"><b><a href="SelectIssueType.aspx">Back</a></b> </span>
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
                                                        Mr. Customer, we don’t send the kit out until you have paid $266.00 towards it.
                                                        I know you are eager to get it, so I will make sure it gets out to you after your
                                                        first payment goes through.
                                                    </p>
                                                </blockquote>
                                            </div>
                                        </asp:Panel>
                                        <asp:Panel ID="pnlCourtesy3" runat="server" Visible="false">
                                            <div class="span10 cs">
                                                <blockquote class="example-right">
                                                    <p>
                                                        We have not sent you the kit yet, but I can definitely get that out to you. I will
                                                        have one sent out, and you will receive it within 4 – 5 weeks.
                                                    </p>
                                                </blockquote>
                                            </div>
                                        </asp:Panel>
                                        <asp:Panel ID="pnlNo" runat="server" Visible="false">
                                            <div class="span10 cs">
                                                <blockquote class="example-right">
                                                    <p>
                                                        Mr. Customer, we sent you the kit on XYZ Date. It takes between 4 and 5 weeks for
                                                        you to receive it, so it should be to you shortly.
                                                    </p>
                                                </blockquote>
                                            </div>
                                        </asp:Panel>
                                        <asp:Panel ID="pnlNoans" runat="server" Visible="false">
                                            <div class="span10 cs">
                                                <blockquote class="example-right">
                                                    <p>
                                                        We did send the kit out on XYZ date. I can have the package tracked to determine
                                                        it’s status; I will follow up with you within 3 – 5 business days with the status
                                                        of the package.
                                                    </p>
                                                </blockquote>
                                            </div>
                                        </asp:Panel>
                                        <asp:Panel ID="pnlfskno" runat="server" Visible="false">
                                            <div class="span10 cs">
                                                <blockquote class="example-right">
                                                    <p>
                                                        I’m sorry to hear that; I will need to track the kit, and have a supervisor call
                                                        you back in reference to a refund, and to cancel the kit. Tracking the kit can take
                                                        3 – 5 days, so please be patient!
                                                    </p>
                                                </blockquote>
                                            </div>
                                            <div class="span10 form-horizontal">
                                                <asp:RadioButtonList ID="rdbSure" runat="server" CssClass="radio inline" RepeatDirection="Vertical">
                                                    <asp:ListItem Text="No" Selected="True" Value="1" />
                                                </asp:RadioButtonList>
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
