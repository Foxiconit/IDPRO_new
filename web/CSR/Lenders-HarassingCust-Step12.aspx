<%@ Page Title="" Language="C#" MasterPageFile="~/web/CSR/CustomerService.Master" AutoEventWireup="true"
    CodeBehind="Lenders-HarassingCust-Step12.aspx.cs" Inherits="IDPRO.web.CSR.Lenders_HarassingCust_Step12" %>

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
                                        Are they calling you at home or work?
                                    </p>
                                </blockquote>
                            </div>
                            <asp:UpdatePanel ID="update1" runat="server">
                                <ContentTemplate>
                                    <div class="row-fluid">
                                        <div class="span10 form-horizontal">
                                            <asp:RadioButtonList ID="rdb" runat="server" AutoPostBack="true" CssClass="radio inline"
                                                RepeatDirection="Vertical" OnSelectedIndexChanged="rdb_SelectedIndexChanged">
                                                <asp:ListItem Text="At home!" Value="1" Selected="True" />
                                                <asp:ListItem Text="At work!" Value="2" />
                                            </asp:RadioButtonList>
                                            <br />
                                            <br />
                                            <span style="float: right;"><b><a href="Lenders-HarassingRef-Step1.aspx">Back</a></b>
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
                                                        I know that can be really frustrating. It takes time for the calls to stop, and
                                                        some lenders refuse to stop until we settle. It is important to remain calm, and
                                                        remember that the collections process is designed to make you frantic and irrational.
                                                        Be sure not to answer their calls, and if you do, to hang up the phone.
                                                    </p>
                                                </blockquote>
                                            </div>
                                        </asp:Panel>
                                        <asp:Panel ID="pnlCourtesy3" runat="server" Visible="false">
                                            <div class="span10 cs">
                                                <blockquote class="example-right">
                                                    <p>
                                                        I know how frustrating this can be; the important thing to remember is there is
                                                        a process to stop them from doing this. The first is to let them know that you are
                                                        informed on the law; notify them that this is their notice that they are no longer
                                                        allowed to contact you at work, and that if they continue to do so, you will report
                                                        them to the Federal Trade Commission. It’s also important to keep a log of contact
                                                        attempts moving forward.
                                                    </p>
                                                </blockquote>
                                            </div>
                                            <div class="span10 form-horizontal">
                                                <asp:RadioButtonList ID="rdbSure" runat="server" CssClass="radio inline" RepeatDirection="Vertical">
                                                    <asp:ListItem Text="OK, I will try that." Value="1" Selected="True" />
                                                    <asp:ListItem Text="I’ve done that already!" Value="2" />
                                                </asp:RadioButtonList>
                                                <br />
                                                <br />
                                                <asp:Button ID="btnyes" runat="server" CssClass="btn btn-success submit" Text="Select"
                                                    OnClick="btnyes_Click" />
                                                <br />
                                                <br />
                                            </div>
                                        </asp:Panel>
                                        <asp:Panel ID="Panel1" runat="server" Visible="false">
                                            <div class="span10 cs">
                                                <blockquote class="example-right">
                                                    <p>
                                                        Sounds good – I will get you a copy of the Cease and Desist letter to send via certified
                                                        mail, and the call log to track al contact attempts they make to your place of business.
                                                        These are the tools necessary to back up your threat of reporting them to the Federal
                                                        Trade Commission.
                                                    </p>
                                                </blockquote>
                                            </div>
                                        </asp:Panel>
                                        <asp:Panel ID="Panel2" runat="server" Visible="false">
                                            <div class="span10 cs">
                                                <blockquote class="example-right">
                                                    <p>
                                                        Now is the time to back up that threat! Report them to the Federal Trade Commission
                                                        by going to FTC.gov. I will have your negotiator reach out to them to see if settlement
                                                        is possible, as that is what will ultimately stop the calls.
                                                    </p>
                                                </blockquote>
                                            </div>
                                        </asp:Panel>
                                    </div>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </div>
                    </div>
               
</asp:Content>
