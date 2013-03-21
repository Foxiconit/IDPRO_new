<%@ Page Title="" Language="C#" MasterPageFile="~/web/CSR/CustomerService.Master" AutoEventWireup="true"
    CodeBehind="ContactInformationChange.aspx.cs" Inherits="IDPRO.ContactInformationChange" %>

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
                                        "Ok Sir ,This is what we have in our system."
                                    </p>
                                </blockquote>
                            </div>
                            <div class="row-fluid">
                                <div class="span10 form-horizontal">
                                    <h3 class="title-divider">
                                        <span>Existing Contact Information</span></h3>
                                    <div class="span12">
                                        <div class="control-group">
                                            <label class="control-label csf-label" for="First Name">
                                                First Name:</label>
                                            <div class="controls">
                                                <asp:Label ID="lblname" runat="server" CssClass="csf" Text="First"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label csf-label" for="Last Name">
                                                Last Name:</label>
                                            <div class="controls">
                                                <asp:Label ID="Label1" runat="server" CssClass="csf" Text="Last Name"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label csf-label" for="Address">
                                                Address:</label>
                                            <div class="controls">
                                                <asp:Label ID="Label8" runat="server" CssClass="csf" Text="Address 456  pp"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label csf-label" for="City">
                                                City:</label>
                                            <div class="controls">
                                                <asp:Label ID="Label9" runat="server" CssClass="csf" Text="City"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label csf-label" for="State">
                                                State:</label>
                                            <div class="controls">
                                                <asp:Label ID="Label10" runat="server" CssClass="csf" Text="State"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label csf-label" for="Zip">
                                                Zip:</label>
                                            <div class="controls">
                                                <asp:Label ID="Label11" runat="server" CssClass="csf" Text="Zip"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label csf-label" for="Creditor Full Name">
                                                Phone Number 1:</label>
                                            <div class="controls">
                                                <asp:Label ID="Label2" runat="server" CssClass="csf" Text="120 558 1258"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label csf-label" for="Creditor Full Name">
                                                Phone Number 2:</label>
                                            <div class="controls">
                                                <asp:Label ID="Label3" runat="server" CssClass="csf" Text="120 558 1258"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label csf-label" for="Creditor Full Name">
                                                Email Address 1:</label>
                                            <div class="controls">
                                                <asp:Label ID="Label6" runat="server" CssClass="csf" Text="Email@mycompany.com"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label csf-label" for="Creditor Full Name">
                                                Email Address 2:</label>
                                            <div class="controls">
                                                <asp:Label ID="Label7" runat="server" CssClass="csf" Text="Email@mycompany.com"></asp:Label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="span6">
                            <div class="span10 cs">
                                <blockquote class="example-right">
                                    <p>
                                        "What would you like to change sir?"
                                    </p>
                                </blockquote>
                            </div>
                            <div class="row-fluid">
                                <div class="span10 form-horizontal">
                                    <h3 class="title-divider">
                                        <span>New Contact Information</span></h3>
                                    <div class="span12">
                                        <div class="control-group">
                                            <label class="control-label csf-label" for="First Name">
                                                First Name:</label>
                                            <div class="controls">
                                                <asp:TextBox ID="txtname" runat="server" CssClass="" placeholder="First Name"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label csf-label" for="Last Name">
                                                Last Name:</label>
                                            <div class="controls">
                                                <asp:TextBox ID="TextBox8" runat="server" CssClass="" placeholder="Last Name"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label csf-label" for="Creditor Full Name">
                                                Address:</label>
                                            <div class="controls">
                                                <asp:TextBox ID="TextBox1" runat="server" CssClass="" placeholder="Address"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label csf-label" for="Creditor Full Name">
                                                City:</label>
                                            <div class="controls">
                                                <asp:TextBox ID="TextBox9" runat="server" CssClass="" placeholder="City"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label csf-label" for="State">
                                                State:</label>
                                            <div class="controls">
                                                <asp:DropDownList ID="ddlstate" CssClass="state" runat="server">
                                                    <asp:ListItem Text="VA"></asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label csf-label" for="Zip">
                                                Zip:</label>
                                            <div class="controls">
                                                <asp:TextBox ID="TextBox11" runat="server" CssClass="span5" placeholder="Zip"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label csf-label" for="Creditor Full Name">
                                                Phone Number 1:</label>
                                            <div class="controls">
                                                <asp:TextBox ID="TextBox2" runat="server" CssClass="" placeholder="Phone Number 1"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label csf-label" for="Creditor Full Name">
                                                Phone Number 2:</label>
                                            <div class="controls">
                                                <asp:TextBox ID="TextBox3" runat="server" CssClass="" placeholder="Phone Number 2"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label csf-label" for="Primary Email">
                                                Primary Email:</label>
                                            <div class="controls">
                                                <asp:TextBox ID="TextBox6" runat="server" CssClass="" placeholder="Primary Email"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label csf-label" for="Secondary Email">
                                                Secondary Email:</label>
                                            <div class="controls">
                                                <asp:TextBox ID="TextBox7" runat="server" CssClass="" placeholder="Secondary Email"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="control-group  text-center">
                                            <div class="controls">
                                                <asp:Button ID="btnAdd" runat="server" Text="Update" OnClick="Button1_Click" CssClass="btn btn-success submit" />
                                              <b><a href="AccountInformationChange.aspx">Back</a></b>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                
</asp:Content>
