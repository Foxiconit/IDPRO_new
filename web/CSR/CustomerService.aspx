<%@ Page Title="" Language="C#" MasterPageFile="~/web/CSR/CustomerService.Master" AutoEventWireup="true"
    CodeBehind="CustomerService.aspx.cs" Inherits="IDPRO.CustomerService" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row-fluid">
        <div class="span12">
            <div class="box">
                <div class="box-header">
                    <span class="title">Customer Service</span>
                </div>
                <div class="box-content">
                    <div class="row-fluid">
                        <div class="span4">
                            <div class="row-fluid">
                                <div class="span1">
                                </div>
                                <div class="span12 cs">
                                    <blockquote class="example-right">
                                        <p>
                                            Thank you For calling Debt Assistance. My Name is agent. can i have your Last Name
                                            and Last 4 Digit Of SSN for security purpose??
                                        </p>
                                    </blockquote>
                                </div>
                            </div>
                            <div class="row-fluid">
                                <div class="span1">
                                </div>
                                  <asp:UpdatePanel ID="update1" runat="server">
                                    <ContentTemplate>
                                <div class="span12 form-horizontal">
                                    <div class="row-fluid">
                                        <div class="span4">
                                            <br />
                                            <b>Last Name:</b>
                                        </div>
                                        <div class="span8">
                                            <br />
                                            <asp:TextBox ID="TextBox1" runat="server" CssClass="span12"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="row-fluid">
                                        <div class="span4">
                                            <br />
                                            <b>SSN:</b>
                                        </div>
                                        <div class="span8">
                                            <br />
                                            <asp:TextBox ID="txtSsn1" runat="server" Text="XXX" disabled="Disabled" CssClass="span3"></asp:TextBox>
                                            -
                                            <asp:TextBox ID="txtSsn2" runat="server" Text="XXX" disabled="Disabled" CssClass="span3"></asp:TextBox>
                                            -
                                            <asp:TextBox ID="txtSsn3" CssClass="span4" placeholder="Last 4 Digits" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="row-fluid">
                                        <div class="span4">
                                            <br />
                                        </div>
                                        <div class="span8">
                                            <br />
                                            <asp:Button ID="Button1" runat="server" CssClass="btn btn-success submit" Text="Next"
                                                OnClick="Button1_Click" />
                                            <br />
                                            <br />
                                        </div>
                                    </div>
                                </div>
                                   </ContentTemplate>
                                </asp:UpdatePanel>
                            </div>
                        </div>
                        <div class="span7">
                            <div class="row-fluid">   <asp:UpdatePanel ID="updategrid" runat="server">
                                    <ContentTemplate>
                                <asp:GridView ID="GridView1" runat="server" Visible="false" CssClass="table table-striped table-bordered table-condensed"
                                    GridLines="None" AutoGenerateColumns="False">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:BoundField DataField="Clientid" HeaderText="Clientid" />
                                        <asp:BoundField DataField="Name" HeaderText="Name" />
                                        <asp:BoundField DataField="SSN" HeaderText="SSN" />
                                        <asp:BoundField DataField="Status" HeaderText="Status" />
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <asp:LinkButton ID="LinkButton1" runat="server" Text="Select" PostBackUrl="~/web/CSR/SelectIssueType.aspx">Select</asp:LinkButton>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                </asp:GridView>
                                 </ContentTemplate>
                                </asp:UpdatePanel>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
