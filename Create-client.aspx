<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Create-client.aspx.cs" Inherits="IDPRO.Create_client" %>
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
                </div>
                <div class="row-fluid">
                    <div class="span12">
                        <div class="tabbable">
                            <ul class="nav nav-tabs">
                                <li class="active"><a href="#1" data-toggle="tab">Section 1</a></li>
                                <li class=""><a href="#2" data-toggle="tab">Section 2</a></li>
                                <li class=""><a href="#3" data-toggle="tab">Section 3</a></li>
                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane active" id="1">
                                    <p>
                                        You are watching section 1.</p>
                                </div>
                                <div class="tab-pane" id="2">
                                    <p>
                                        You are watching Section 2.</p>
                                </div>
                                <div class="tab-pane" id="3">
                                    <p>
                                        You are watching Section 3.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row-fluid">
                    <div class="span12">
                        <div class="form-horizontal form-large">
                            <h3 class="title-divider">
                                <span>Create New Client</span></h3>
                            <div class="span12">
                                <div class="span3">
                                </div>
                                <div class="span5">
                                    <div class="control-group">
                                        <label class="control-label" for="First Name">
                                            Phone Number:</label>
                                        <div class="controls">
                                            <asp:TextBox ID="txtphnNo" runat="server" placeholder="Phone Number"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="span2">
                                </div>
                            </div>
                            <div class="control-group  text-center">
                                <div class="controls">
                                    <asp:Button ID="btn" runat="server" Text="Submit" CssClass="btn btn-success submit"
                                        OnClick="btn_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
