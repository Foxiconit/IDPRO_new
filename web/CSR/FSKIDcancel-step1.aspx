<%@ Page Title="" Language="C#" MasterPageFile="~/web/CSR/CustomerService.Master" AutoEventWireup="true"
    CodeBehind="FSKIDcancel-step1.aspx.cs" Inherits="IDPRO.FSKIDcancel_step1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
                        <div class="span11">
                            <div class="span8 cs">
                                <blockquote class="example-right">
                                    <p>
                                        Mr. Customer, you are requesting to cancel the Financial Success Kit. Many people
                                        in our program find that it helps to maintain and build upon the success that they
                                        achieve while enrolled in the program. Instead of cancelling it, I will give it
                                        to you at a reduced cost of $200.00; how does that sound?
                                    </p>
                                </blockquote>
                            </div>
                        </div>
                        <div class="span12">
                            <div class="row-fluid">
                                <div class="span5 form-horizontal">
                                    <h3 class="title-divider">
                                        <span>FSK/IDPRO Cancel</span></h3>
                                    <div class="span12">
                                        <div class="control-group">
                                            <asp:RadioButtonList ID="rdb" runat="server" CssClass="radio inline" RepeatDirection="Vertical">
                                                <asp:ListItem Text="Customer keeps FSK" Selected="True" Value="1" />
                                                <asp:ListItem Text="Customer Insists" Value="2" />
                                            </asp:RadioButtonList>
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
                        </div>
                   
</asp:Content>
