<%@ Page Title="" Language="C#" MasterPageFile="~/web/CSR/CustomerService.Master" AutoEventWireup="true"
    CodeBehind="ProofResidency-Step1.aspx.cs" Inherits="IDPRO.web.CSR.ProofResidency_Step1" %>

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
                                        Mrs. Customer, I am contacting you because our banking partner, Global Client Solutions,
                                        has requested proof of residency. Acceptable documents include:
                                        <ul>
                                            <li>Utility bill listing “Service Address” </li>
                                            <li>Item mailed to applicant’s physical address </li>
                                            <li>Delivery receipt</li>
                                            <li>Property tax statement </li>
                                            <li>Lease/rental agreement </li>
                                            <li>Homeowner’s insurance/home loan statement </li>
                                        </ul>
                                        <br />
                                        These documents must be dated within the last six months of the creation date on
                                        the account to be used for validation, and you must include the full document (ex,
                                        6 of 6 pages0. Do you have one of these?
                                    </p>
                                </blockquote>
                            </div>
                            <asp:UpdatePanel ID="update1" runat="server">
                                <ContentTemplate>
                                    <div class="row-fluid">
                                        <div class="span10 form-horizontal">
                                            <asp:RadioButtonList ID="rdb" runat="server" AutoPostBack="true" CssClass="radio inline" 
                                                RepeatDirection="Vertical" onselectedindexchanged="rdb_SelectedIndexChanged">
                                                <asp:ListItem Text="Yes" Value="1" Selected="True" />
                                                <asp:ListItem Text="No" Value="2" />
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
                                                        Great! Please either fax this document directly to GCS at 866-366-7709, or email
                                                        it to me directly at [CSR email]. This is a required document, and this is an urgent
                                                        request, so please get this out as soon as possible.
                                                    </p>
                                                </blockquote>
                                            </div>
                                        </asp:Panel>
                                        <asp:Panel ID="pnlCourtesy3" runat="server" Visible="false">
                                            <div class="span10 cs">
                                                <blockquote class="example-right">
                                                    <p>
                                                        I understand; it is crucial that GCS is able to validate your account. Without some
                                                        form of verification, they will close your account and we will have to re-enroll
                                                        you in the program. Please contact them at 800.398.7191 to see what other options
                                                        they have available for you. I will follow up with you in a few days!
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
