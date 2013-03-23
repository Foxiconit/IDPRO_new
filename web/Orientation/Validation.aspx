<%@ Page Title="" Language="C#" MasterPageFile="~/web/Orientation/Orientation.Master"
    AutoEventWireup="true" CodeBehind="Validation.aspx.cs" Inherits="IDPRO.web.Orientation.Validation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row-fluid">
        <div class="span5 cs">
            <blockquote class="example-right">
                <p>
                    First, let me verify your information:
                </p>
            </blockquote>
        </div>
    </div>
    <div class="row-fluid">
        <div class="span4">
            <div class="row-fluid">
                <div class="span10 form-horizontal font12">
                    <h3 class="title-divider">
                        <span>Customer</span></h3>
                    <div class="span12">
                        <div class="control-group">
                            <label class="control-label" for="First Name">
                                Full name:</label>
                            <div class="controls">
                                <asp:Label ID="lblname" runat="server" CssClass="csf" Text="John Smith"></asp:Label>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="Last Name">
                                Address:</label>
                            <div class="controls">
                                <asp:Label ID="Label1" runat="server" CssClass="csf" Text="125 St. stephen, VA"></asp:Label>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="Address">
                                Phone number(s):</label>
                            <div class="controls">
                                <asp:Label ID="Label8" runat="server" CssClass="csf" Text="452 552 0000"></asp:Label>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="Creditor Full Name">
                                Email Address:</label>
                            <div class="controls">
                                <asp:Label ID="Label6" runat="server" CssClass="csf" Text="Email@mycompany.com"></asp:Label>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="City">
                                SSN:</label>
                            <div class="controls">
                                <asp:Label ID="Label9" runat="server" CssClass="csf" Text="120 111 0004"></asp:Label>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="State">
                                Date of Birth:</label>
                            <div class="controls">
                                <asp:Label ID="Label10" runat="server" CssClass="csf" Text="01 Jan 1988"></asp:Label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="span4">
            <div class="row-fluid">
                <div class="span10 form-horizontal font12">
                    <h3 class="title-divider">
                        <span>Co-Customer</span></h3>
                    <div class="span12">
                        <div class="control-group">
                            <label class="control-label" for="First Name">
                                Full name:</label>
                            <div class="controls">
                                <asp:Label ID="Label2" runat="server" CssClass="csf" Text="John Smith"></asp:Label>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="Last Name">
                                Address:</label>
                            <div class="controls">
                                <asp:Label ID="Label3" runat="server" CssClass="csf" Text="125 St. stephen, VA"></asp:Label>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="City">
                                SSN:</label>
                            <div class="controls">
                                <asp:Label ID="Label7" runat="server" CssClass="csf" Text="120 111 0004"></asp:Label>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="State">
                                Date of Birth:</label>
                            <div class="controls">
                                <asp:Label ID="Label11" runat="server" CssClass="csf" Text="01 Jan 1988"></asp:Label>
                            </div>
                        </div>
                        <br />
                        <br />
                        <br />
                        <br />
                    </div>
                </div>
            </div>
        </div>
        <div class="span4">
            <div class="row-fluid">
                <div class="span10 form-horizontal font12">
                    <h3 class="title-divider">
                        <span>Bank Info</span></h3>
                    <div class="span12">
                        <div class="control-group">
                            <label class="control-label" for="First Name">
                                Routing Number:</label>
                            <div class="controls">
                                <asp:Label ID="Label4" runat="server" CssClass="csf" Text="100 002 5442"></asp:Label>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="Last Name">
                                Account Number:</label>
                            <div class="controls">
                                <asp:Label ID="Label5" runat="server" CssClass="csf" Text="0001 0002 444"></asp:Label>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="City">
                                Account Type:</label>
                            <div class="controls">
                                <asp:Label ID="Label12" runat="server" CssClass="csf" Text="Saving"></asp:Label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="span10">
                    <br />
                    <br />
                    <br />
                    <div class="span5">
                        <asp:Button ID="Button1" runat="server" Text="Next" PostBackUrl="~/web/Orientation/5Keys.aspx"
                            CssClass="btn btn-success submit" />
                    </div>
                    <div class="span5">
                        <span style="float: right;"><b><a href="Greeting.aspx">Back</a></b> </span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
