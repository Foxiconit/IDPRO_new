<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true"
    CodeBehind="SearchCustomer.aspx.cs" Inherits="IDPRO.SearchCustomer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row-fluid">
        <div class="span12">
            <div class="box">
                <div class="box-header">
                    <span class="title">New Sales</span>
                </div>
                <div class="box-content">
                    <div class="row-fluid">
                        <div class="span12">
                            <div class="tabbable">
                                <ul class="nav nav-tabs">
                                    <li class=""><a href="SearchCustomer.aspx">Search Customer</a></li>
                                      <li class=""><a href="PersonalInfo.aspx">Personal Info</a></li>
                                    <li class=""><a href="BankInfo.aspx">Bank Info</a></li>
                                    <li class=""><a href="Creditor.aspx">Creditor Info</a></li>
                                    <li class=""><a href="PlanInfo.aspx">Plan Info</a></li>
                                   
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="row-fluid">
                        <div class="span12">
                            <div class="form-horizontal form-large">
                                <div style="padding-left: 400px;">
                                    <asp:Label ID="lblmsg" runat="server" Style="color: Red;"></asp:Label></div>
                                <h3 class="title-divider">
                                    <span>Search Customer</span></h3>
                                <div class="span12">
                                    <div class="span6 offset3">
                                        <div class="control-group">
                                            <label class="control-label" for="First Name">
                                                Phone No.</label>
                                            <div class="controls">
                                                <asp:TextBox ID="txtClient" runat="server" placeholder="Phone Number" required pattern="\d+"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="control-group  text-center">
                                    <div class="controls">
                                        <asp:Button ID="btnSearch" runat="server" CssClass="btn btn-success submit" Text="Search"
                                            OnClick="btnSearch_Click" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Container -->
    </div>
</asp:Content>
