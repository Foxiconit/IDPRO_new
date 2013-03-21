<%@ Page Title="" Language="C#" MasterPageFile="~/web/CSR/CustomerService.Master" AutoEventWireup="true"
    CodeBehind="AccountUpdate.aspx.cs" Inherits="IDPRO.web.CSR.AccountUpdate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
                        <div class="span11">
                            <div class="span8 cs">
                                <blockquote class="example-right">
                                    <p>
                                        I would be happy to give you an update on how your program is progressing!
                                        <ul>
                                            <li>X out of z drafts have successfully cleared </li>
                                            <li>The final draft of your program is currently scheduled for [Date]. Remember that
                                                many customers do not require the last few drafts of their program.</li>
                                            <li>We have settled with x lenders
                                                <ul>
                                                    <li>ABC</li>
                                                    <li>BCD</li>
                                                    <li>CDE</li>
                                                </ul>
                                            </li>
                                            <li>We are still negotiating with your remaining lenders
                                                <ul>
                                                    <li>DEF</li>
                                                    <li>EFG</li>
                                                    <li>FGH</li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </p>
                                </blockquote>
                            </div>
                            <div class="span6">
                                <span style="float: right;"><b><a href="SelectIssueType.aspx">Back</a></b> </span>
                            </div>
                        </div>
                     
</asp:Content>
