<%@ Page Title="" Language="C#" MasterPageFile="~/web/CSR/CustomerService.Master" AutoEventWireup="true"
    CodeBehind="Lenders-NCA-1.aspx.cs" Inherits="IDPRO.web.CSR.Lenders_NCA_1" %>

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
                                        Ms. Customer, you are taking steps to leave this program free of payday loan debt;
                                        not adding this in would work against that goal. Are you certain?
                                    </p>
                                </blockquote>
                            </div>
                            <asp:UpdatePanel ID="update1" runat="server">
                                <ContentTemplate>
                                    <div class="row-fluid">
                                        <div class="span10 form-horizontal">
                                            <asp:RadioButtonList ID="rdb" runat="server" CssClass="radio inline"  onselectedindexchanged="rdb_SelectedIndexChanged" AutoPostBack="true" RepeatDirection="Vertical">
                                                <asp:ListItem Text="I’m Sure!" Value="1" Selected="True" />
                                                <asp:ListItem Text="OK, I’ll add it in" Value="2" />
                                            </asp:RadioButtonList>
                                            <br />
                                            <br />
                                           
                                            <span style="float: right;"><b><a href="Lenders-NCA.aspx">Back</a></b> </span>
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
                                                        Understood; I will let your negotiator know.
                                                    </p>
                                                </blockquote>
                                            </div>
                                        </asp:Panel>
                                        <asp:Panel ID="pnlCourtesy3" runat="server" Visible="false">
                                            <div class="span10 cs">
                                                <blockquote class="example-right">
                                                    <p>
                                                        Good choice! I will have our accounting department add this lender into the program
                                                        for you. To account for this loan we will need to add drafts onto the end of your
                                                        program. I will be in tough with you within tow business days to let you know how
                                                        many drafts will be added. Thank you!
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
