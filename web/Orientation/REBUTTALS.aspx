<%@ Page Title="" Language="C#" MasterPageFile="~/web/Orientation/Orientation.Master"
    AutoEventWireup="true" CodeBehind="REBUTTALS.aspx.cs" Inherits="IDPRO.web.Orientation.REBUTTALS" %>

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
                        Just 50 cents per day a will give you peace of mind for the protection you need.
                        The total cost is $ 14.95 per month. After enrolling, you are given a member services
                        number to call 24/7 to assist you with any questions you have..To get started we
                        need to send you one document for you to Docusign . We will than send you your welcome
                        package after receiving your signed document. Your coverage will begin 5 days after
                        your first payment.
                    </p>
                </blockquote>
            </div>
            <div class="span12">
                <div class="row-fluid">
                    <div class="span10 form-horizontal">
                        <div class="span12">
                            <div class="control-group">
                                <asp:UpdatePanel ID="update1" runat="server">
                                    <ContentTemplate>
                                        <asp:RadioButtonList ID="rdb" runat="server" CssClass="radio inline" AutoPostBack="true"
                                            RepeatDirection="Vertical" OnSelectedIndexChanged="rdb_SelectedIndexChanged">
                                            <asp:ListItem Text="Customer agreed" Value="1" Selected="True" />
                                            <asp:ListItem Text="I want think about it: " Value="2" />
                                            <asp:ListItem Text="What will I receive?" Value="3"></asp:ListItem>
                                            <asp:ListItem Text="Why do I need this?" Value="4"></asp:ListItem>
                                            <asp:ListItem Text="Who do I call after I sign up if there are any problems?" Value="5"></asp:ListItem>
                                            <asp:ListItem Text="How much is this?" Value="6"></asp:ListItem>
                                        </asp:RadioButtonList>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                            </div>
                            <div class="control-group  text-center">
                                <div class="controls">
                                    <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="btn btn-success submit" />
                                    <b><a href="5Keys.aspx">Back</a></b>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="span5">
            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                <ContentTemplate>
                    <asp:Panel ID="pnl1" runat="server" Visible="false">
                        <%--<div class="span10 cs">
                    <blockquote class="example-right">
                        <p>
                            <b>1. Selected in ID Protection tab: </b>
                            <ul>
                                <li>Type of contract (GCS or Direct Bill)</li>
                                <li>Draft information(Direct Bill Only)</li>
                            </ul>
                        </p>
                        <p>
                            <b>2. ID PRO Contract Process:</b>
                            <ul>
                                <li>Contract is download from Debt Manager documents with Client info</li>
                                <li>Contract will be save as PDF format for client </li>
                                <li>Contract is send via Docusign to customer email account</li>
                                <li>Senior Manager check Gmail account linked to Docusing to see if Client “look” and/or
                                    “signed” contract </li>
                                <li>Sales Admin is responsible for moving received contracts to active customer files</li>
                                <li>Sales Admin will task support user for Onboard ID Pro</li>
                                <li>During this process Senior Manager is responsible for adding Contract Received Date
                                    in Debt Manager “Orientation Tab” </li>
                                <li>NOTE: Same process is follow for Co-client only difference is the info for client
                                    is manually change before contract is save as PDF.</li>
                                <li>Task must be label “Double” or a second task is assign to Support user for “Onboard
                                    Co-Client ID pro”</li>
                            </ul>
                        </p>
                    </blockquote>
                </div>--%>
                    </asp:Panel>
                    <asp:Panel ID="pnl2" runat="server" Visible="false">
                        <div class="span10 cs">
                            <blockquote class="example-right">
                                <p>
                                    Each day you wait, another fraudulent company can access all of your personal information.
                                    You can take control again by getting the full protection you need.
                                </p>
                            </blockquote>
                        </div>
                    </asp:Panel>
                    <asp:Panel ID="pnl3" runat="server" Visible="false">
                        <div class="span10 cs">
                            <blockquote class="example-right">
                                <p>
                                    In your welcome package, you receive a customer service number that is available.
                                    It also has a breakdown of your coverage.
                                </p>
                            </blockquote>
                        </div>
                    </asp:Panel>
                    <asp:Panel ID="pnl4" runat="server" Visible="false">
                        <div class="span10 cs">
                            <blockquote class="example-right">
                                <p>
                                    Your personal information was shared with many lenders. Your social, banking etc.
                                    Your identity was shared with companies that are fraudulent. You need to get protected
                                    to ensure your personal information will not get misused.
                                </p>
                            </blockquote>
                        </div>
                    </asp:Panel>
                    <asp:Panel ID="pnl5" runat="server" Visible="false">
                        <div class="span10 cs">
                            <blockquote class="example-right">
                                <p>
                                    You would contact member services which are open 24/7
                                </p>
                            </blockquote>
                        </div>
                    </asp:Panel>
                    <asp:Panel ID="pnl6" runat="server" Visible="false">
                        <div class="span10 cs">
                            <blockquote class="example-right">
                                <p>
                                    50 cents per day $14.95 per month Does not raise your monthly payments, just adds
                                    (1, 2 months) (Months x 14.95 divided by payment)
                                </p>
                            </blockquote>
                        </div>
                    </asp:Panel>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>
</asp:Content>
