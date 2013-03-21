<%@ Page Title="" Language="C#" MasterPageFile="~/web/CSR/CustomerService.Master" AutoEventWireup="true"
    CodeBehind="Lender-Validate.aspx.cs" Inherits="IDPRO.web.CSR.Lender_Validate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
                    <div class="row-fluid">
                        <div class="span1">
                        </div>
                        <div class="span6">
                            <div class="span10 cs">
                                <blockquote class="example-right">
                                    <p>
                                        Mr. Customer, I am contacting you because we need some additional information about
                                        one/some of your lenders.
                                    </p>
                                </blockquote>
                            </div>
                            <asp:UpdatePanel ID="update1" runat="server">
                                <ContentTemplate>
                                    <div class="row-fluid">
                                        <div class="span10 form-horizontal">
                                            <h3 class="title-divider">
                                                <span>Un-validated Lender</span></h3>
                                            <div class="span12">
                                                <div class="control-group">
                                                    <label class="control-label csf-label" for="First Name">
                                                        Phone No.</label>
                                                    <div class="controls">
                                                        <asp:TextBox ID="txtphn" runat="server" placeholder="Phone no."></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label class="control-label csf-label" for="Last Name">
                                                        Fax</label>
                                                    <div class="controls">
                                                        <asp:TextBox ID="txtFax" runat="server" placeholder="Fax"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label class="control-label csf-label" for="Creditor Full Name">
                                                        This Lender is with a 3rd Party</label>
                                                    <div class="controls">
                                                        <asp:CheckBox ID="chktick" runat="server" />
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label class="control-label csf-label" for="Creditor Full Name">
                                                        3rd Party Name</label>
                                                    <div class="controls">
                                                        <asp:TextBox ID="txtpartyName" runat="server" placeholder="3rd Party Name"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label class="control-label csf-label" for="State">
                                                        3rd Party Phone</label>
                                                    <div class="controls">
                                                        <asp:TextBox ID="txtphn1" runat="server" placeholder="3rd Party Phone No."></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label class="control-label csf-label" for="Zip">
                                                        3rd Party Fax</label>
                                                    <div class="controls">
                                                        <asp:TextBox ID="txtFax1" runat="server" placeholder="3rd Party Fax"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="control-group  text-center">
                                                    <div class="controls">
                                                        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" CssClass="btn btn-success submit" />
                                                        <b><a href="SelectIssueType.aspx">Back</a></b>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </div>
                        <asp:UpdatePanel ID="update2" runat="server">
                            <ContentTemplate>
                                <asp:Panel ID="pnlsubmit" runat="server" Visible="false">
                                    <div class="span5">
                                        <div class="span10 cs">
                                            <blockquote class="example-right">
                                                <p>
                                                    Thank you Mr. Customer; this will ensure that you negotiator reaches the right person
                                                    the first time we reach out!
                                                </p>
                                            </blockquote>
                                        </div>
                                    </div>
                                </asp:Panel>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
              
</asp:Content>
