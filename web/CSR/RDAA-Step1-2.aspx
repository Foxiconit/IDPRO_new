<%@ Page Title="" Language="C#" MasterPageFile="~/web/CSR/CustomerService.Master" AutoEventWireup="true"
    CodeBehind="RDAA-Step1-2.aspx.cs" Inherits="IDPRO.RDAA_Step1_2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
                    <div class="span12">
                        <div class="span5 cs">
                            <blockquote class="example-right">
                                <p>
                                    Ms. Customer, I am calling to follow up with you. We sent revised account paperwork;
                                    have you received it?
                                </p>
                            </blockquote>
                        </div>
                        <div class="span6">
                                <asp:UpdatePanel ID="update2" runat="server">
                                    <ContentTemplate>
                                        <div class="row-fluid">
                                            <asp:Panel ID="pnlyes" runat="server" Visible="true">
                                                <div class="span12 cs">
                                                    <blockquote class="example-right">
                                                        <p>
                                                            Excellent! We will retrieve the document and provide it to our banking partner.
                                                            Your first draft will resume on XYZ Date. Please make sure that you account for
                                                            this draft in your budgeting. Thank you!
                                                        </p>
                                                    </blockquote>
                                                </div>
                                            </asp:Panel>
                                            <asp:Panel ID="pnlno" runat="server" Visible="false">
                                                <div class="span12 cs">
                                                    <blockquote class="example-right">
                                                        <p>
                                                            I’m sorry to hear that. I will have those documents resent to you, and follow up
                                                            to see if you have received them.
                                                        </p>
                                                    </blockquote>
                                                </div>
                                            </asp:Panel>
                                            <asp:Panel ID="pnlnomultiple" runat="server" Visible="false">
                                                <div class="span12 cs">
                                                    <blockquote class="example-right">
                                                        <p>
                                                            Mr. Customer, I will email it as an attachment instead of via Docusign. Please print
                                                            it out, sign it, and return it via fax to 888.932.9014. You can call me to let me
                                                            know you have returned it, and I will take it from there!
                                                        </p>
                                                    </blockquote>
                                                </div>
                                            </asp:Panel>
                                        </div>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                            </div>
                    </div>
                    <div class="span12">
                        <div class="row-fluid">
                            <div class="span5 form-horizontal">
                                <h3 class="title-divider">
                                    <span>Account Update RDAA</span></h3>
                                <asp:UpdatePanel ID="update1" runat="server">
                                    <ContentTemplate>
                                        <div class="span12">
                                            <div class="control-group">
                                                <asp:RadioButtonList ID="rdb" runat="server" AutoPostBack="true" CssClass="radio inline"
                                                    RepeatDirection="Vertical" OnSelectedIndexChanged="rdb_SelectedIndexChanged">
                                                    <asp:ListItem Text="Yes" Selected="True" Value="1" />
                                                    <asp:ListItem Text="No" Value="2" />
                                                    <asp:ListItem Text="No, Multiple Attempts" Value="3" />
                                                </asp:RadioButtonList>
                                            </div>
                                            <div class="control-group  text-center">
                                                <div class="controls">
                                                    <%--<asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" CssClass="btn btn-success submit" />--%><b><a
                                                        href="RDAA-Step1.aspx">Back</a></b>
                                                </div>
                                            </div>
                                        </div>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                            </div>
                            
                        </div>
                    </div>
             
</asp:Content>
