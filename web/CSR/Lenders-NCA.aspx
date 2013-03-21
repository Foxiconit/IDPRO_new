<%@ Page Title="" Language="C#" MasterPageFile="~/web/CSR/CustomerService.Master" AutoEventWireup="true"
    CodeBehind="Lenders-NCA.aspx.cs" Inherits="IDPRO.web.CSR.Lenders_NCA" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
                    <div class="row-fluid">
                        <div class="span1">
                        </div>
                        <div class="span5">
                            <%-- <div class="span10 cs">
                                <blockquote class="example-right">
                                    <p>
                                        Hello Mr(s). (Customer name) my name is (Customer Service Representative Name) and
                                        I am calling from Payday Loan Debt Assistance. I have some great news! One of our
                                        third party partners has indicated that they currently hold a loan to you with an
                                        outstanding balance; we have a pre-negotiated settlement with them, but we need
                                        your consent to add the loan into the program. The original lender was [Lender name],
                                        and the loan was for [loan amount]. Would you like to add this into the program?
                                    </p>
                                </blockquote>
                            </div>--%>
                            <asp:UpdatePanel ID="update1" runat="server">
                                <ContentTemplate>
                                    <div class="row-fluid">
                                        <div class="span10 form-horizontal">
                                            <asp:RadioButtonList ID="rdb" runat="server" CssClass="radio inline" 
                                                AutoPostBack="true" RepeatDirection="Vertical" 
                                                onselectedindexchanged="rdb_SelectedIndexChanged">
                                                <asp:ListItem Text="Customer Answers" Value="1" Selected="True" />
                                                <asp:ListItem Text="No Answer" Value="2" />
                                            </asp:RadioButtonList>
                                            <br />
                                            <br />
                                            
                                            <span style="float: right;"><b><a href="SelectIssueType.aspx">Back</a></b> </span>
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
                                                        Hello Mr(s). (Customer name) my name is (Customer Service Representative Name) and
                                                        I am calling from Payday Loan Debt Assistance. I have some great news! One of our
                                                        third party partners has indicated that they currently hold a loan to you with an
                                                        outstanding balance; we have a pre-negotiated settlement with them, but we need
                                                        your consent to add the loan into the program. The original lender was [Lender name],
                                                        and the loan was for [loan amount]. Would you like to add this into the program?
                                                    </p>
                                                </blockquote>
                                            </div>
                                        </asp:Panel>
                                        <asp:Panel ID="pnlCourtesy3" runat="server" Visible="false">
                                            <div class="span10 cs">
                                                <blockquote class="example-right">
                                                    <p>
                                                        Hello Mr(s). (Customer name) my name is (Customer Service Representative Name) and
                                                        I am calling from Payday Loan Debt Assistance. I have some great news! One of our
                                                        third party partners has indicated that they currently hold a loan to you with an
                                                        outstanding balance; we have a pre-negotiated settlement with them, but we need
                                                        your consent to add the loan into the program.Please call me at [extension] to discuss
                                                        this matter.
                                                    </p>
                                                </blockquote>
                                            </div>
                                        </asp:Panel>
                                        <asp:Panel ID="pnlNo" runat="server" Visible="false">
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
                                        <asp:Panel ID="pnlaccountchange" runat="server" Visible="false">
                                            <div class="span10 form-horizontal">
                                                <asp:RadioButtonList ID="rdbSure" runat="server" CssClass="radio inline" RepeatDirection="Vertical">
                                                    <asp:ListItem Text="Absolutely" Selected="True" Value="1" />
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
                                    </div>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </div>
                    </div>
               
</asp:Content>
