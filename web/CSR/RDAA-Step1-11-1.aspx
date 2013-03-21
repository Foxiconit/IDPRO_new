<%@ Page Title="" Language="C#" MasterPageFile="~/web/CSR/CustomerService.Master" AutoEventWireup="true"
    CodeBehind="RDAA-Step1-11-1.aspx.cs" Inherits="IDPRO.RDAA_Step1_11_1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
                        <div class="span11">
                            <div class="span5 cs">
                                <blockquote class="example-right">
                                    <p>
                                        Excellent! Please verify the routing number for me
                                    </p>
                                </blockquote>
                            </div>
                        </div>
                        <div class="span12">
                            <div class="row-fluid">
                                <div class="span5 form-horizontal">
                                    <h3 class="title-divider">
                                        <span>Account Update RDAA</span></h3>
                                    <div class="span12">
                                        <asp:UpdatePanel ID="update1" runat="server">
                                            <ContentTemplate>
                                                <div class="control-group">
                                                    <asp:TextBox ID="txtRTaccount" runat="server" placeholder="Rt. Number"></asp:TextBox><br />
                                                    <br />
                                                    <asp:TextBox ID="txtACCT" runat="server" placeholder="Account"></asp:TextBox>
                                                </div>
                                                <div class="control-group  text-center">
                                                    <div class="controls">
                                                        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" CssClass="btn btn-success submit" /><b><a
                                                            href="RDAA-Step1-11.aspx">Back</a></b>
                                                    </div>
                                                </div>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </div>
                                </div>
                                <div class="span5">
                                    
                                    <asp:UpdatePanel ID="update2" runat="server">
                                        <ContentTemplate>
                                            <div class="row-fluid">
                                                <asp:Panel ID="pnlaccupdate" runat="server" Visible="false">
                                                    <div class="span10 cs">
                                                        <blockquote class="example-right">
                                                            <p>
                                                                Thank you Ms. Customer! I will be sending out updated paperwork for you to sign.
                                                                It is VERY urgent that you sign this via Docusign and return it to us immediately.
                                                                Every day that goes by with missed payments is a day your negotiator can’t work
                                                                on your behalf. I will call you to let you know we have sent it out. Also, please
                                                                be aware that any drafts set to occur in the next 7 days will need to be pushed
                                                                to the end of your program. If you would like to make these drafts up, please let
                                                                us know after the paperwork is returned and your first draft goes through successfully
                                                                so we can schedule those make-up payments for you. May I assist you with anything
                                                                else?
                                                            </p>
                                                        </blockquote>
                                                    </div>
                                                </asp:Panel>
                                            </div>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </div>
                            </div>
                        </div>
                  
</asp:Content>
