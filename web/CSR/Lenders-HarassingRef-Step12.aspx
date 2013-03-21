<%@ Page Title="" Language="C#" MasterPageFile="~/web/CSR/CustomerService.Master" AutoEventWireup="true"
    CodeBehind="Lenders-HarassingRef-Step12.aspx.cs" Inherits="IDPRO.web.CSR.Lenders_HarassingRef_Step12" %>

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
                                        I know that must be frustrating. The first thing to note is that it is a violation
                                        of the law to do so. The reference that your lender is calling must inform the person
                                        calling that they are no longer allowed to contact them in reference to this loan.
                                        They will want to specifically threaten to report them to the Federal Trade Commission.
                                        Often times informing lenders that you are advised on the law is enough to get them
                                        to stop calling.
                                    </p>
                                </blockquote>
                            </div>
                            <asp:UpdatePanel ID="update1" runat="server">
                                <ContentTemplate>
                                    <div class="row-fluid">
                                        <div class="span10 form-horizontal">
                                            <asp:RadioButtonList ID="rdb" runat="server" AutoPostBack="true" CssClass="radio inline"
                                                RepeatDirection="Vertical" OnSelectedIndexChanged="rdb_SelectedIndexChanged">
                                                <asp:ListItem Text="OK, I will try that." Value="1" Selected="True" />
                                                <asp:ListItem Text="I’ve done that already!" Value="2" />
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
                                                        Sounds good – I will get you a copy of the Cease and Desist letter to send via certified
                                                        mail, and the call log to track all contact attempts they make to your references.
                                                        These are the tools necessary to back up your threat of reporting them to the Federal
                                                        Trade Commission.
                                                    </p>
                                                </blockquote>
                                            </div>
                                        </asp:Panel>
                                        <asp:Panel ID="pnlCourtesy3" runat="server" Visible="false">
                                            <div class="span10 cs">
                                                <blockquote class="example-right">
                                                    <p>
                                                        Now is the time to back up that threat! Have your reference report them to the Federal
                                                        Trade Commission by going to FTC.gov. I will have your negotiator reach out to them
                                                        to see if settlement is possible, as that is what will ultimately stop the calls.
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
                                    </div>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </div>
                    </div>
                
</asp:Content>
