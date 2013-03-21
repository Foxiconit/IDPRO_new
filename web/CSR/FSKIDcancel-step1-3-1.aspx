<%@ Page Title="" Language="C#" MasterPageFile="~/web/CSR/CustomerService.Master" AutoEventWireup="true"
    CodeBehind="FSKIDcancel-step1-3-1.aspx.cs" Inherits="IDPRO.FSKIDcancel_step1_3_1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
                        <div class="span11">
                            <div class="span8 cs">
                                <blockquote class="example-right">
                                    <p>
                                        Mr. Customer, we have not yet sent you the Financial Success Kit. I will cancel
                                        it for you, and any amounts you have paid towards it will be refunded to your Global
                                        Client Solutions account
                                    </p>
                                </blockquote>
                            </div>
                        </div>
                        <div class="span12">
                            <div class="row-fluid">
                                   <div class="span6 well" style="margin-top: 0;">
                                        <div class="form-horizontal">
                                            <h3 class="title-divider">
                                            </h3>
                                            <div class="span12">
                                                <div class="span5">
                                                    <div class="control-group">
                                                        <label class="control-label" for="Last Name">
                                                            Ticket Type</label>
                                                        <div class="controls">
                                                            <asp:TextBox ID="TextBox2" runat="server" placeholder="Ticket Type"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="span12">
                                                <div class="span5">
                                                    <div class="control-group">
                                                        <label class="control-label" for="Last Name">
                                                            Priority</label>
                                                        <div class="controls">
                                                            <asp:DropDownList ID="DropDownList2" runat="server">
                                                                <asp:ListItem Text="Low"></asp:ListItem>
                                                                <asp:ListItem Text="Medium"></asp:ListItem>
                                                                <asp:ListItem Text="Very Urgent"></asp:ListItem>
                                                            </asp:DropDownList>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="span12">
                                                <div class="span5">
                                                    <div class="control-group">
                                                        <label class="control-label" for="Last Name">
                                                            Assigned To</label>
                                                        <div class="controls">
                                                            <asp:DropDownList ID="DropDownList3" runat="server">
                                                                <asp:ListItem Text="Low"></asp:ListItem>
                                                                <asp:ListItem Text="Medium"></asp:ListItem>
                                                                <asp:ListItem Text="Very Urgent"></asp:ListItem>
                                                            </asp:DropDownList>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="span12">
                                                <div class="span11">
                                                    <div class="control-group">
                                                        <label class="control-label" for="Last Name">
                                                            Description</label>
                                                        <div class="controls">
                                                            <asp:TextBox ID="TextBox1" runat="server" Rows="10" CssClass="span12" Columns="50"
                                                                TextMode="MultiLine"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="control-group  text-center">
                                                <div class="controls">
                                                    <asp:Button ID="Button1" runat="server" Text="Submit" 
                                                        CssClass="btn btn-success submit" onclick="Button1_Click" />
                                                        <b><a href="FSKIDcancel-step1-3.aspx">Back</a></b>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                <%--<div class="span5 form-horizontal">
                                    <h3 class="title-divider">
                                        <span>Select Below</span></h3>
                                    <div class="span12">
                                        <div class="control-group">
                                            TICKET BOX
                                        </div>
                                        <div class="control-group  text-center">
                                            <div class="controls">
                                                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" CssClass="btn btn-success submit" />
                                            </div>
                                        </div>
                                    </div>
                                </div>--%>
                            </div>
                        </div>
                   
</asp:Content>
