<%@ Page Title="" Language="C#" MasterPageFile="~/web/Customer/Customer.Master" AutoEventWireup="true"
    CodeBehind="Creditor.aspx.cs" Inherits="IDPRO.web.Customer.Creditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row-fluid">
        <div class="span12">
            <div class="form-horizontal form-large">
                <h3 class="title-divider">
                    <span>Creditors</span>
                    <asp:Button ID="Button1" runat="server" Text="Add Creditor" CssClass="btn btn-success creditor check pull-right" /></h3>
               <%-- <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>--%>
                        <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped table-bordered table-condensed"
                            GridLines="None" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="Name" HeaderText="Creditor Name" />
                                <asp:BoundField DataField="Status" HeaderText="Status" />
                                <asp:BoundField DataField="OriginalBalance" HeaderText="Original Balance" />
                                <asp:BoundField DataField="NewCredit" HeaderText="New Credit" />
                                <asp:BoundField DataField="BalanceatSettlment" HeaderText="Balance at Settlment" />
                                <asp:BoundField DataField="SettlmentAmount" HeaderText="Settlment Amount" />
                                <asp:BoundField DataField="FeesAmount" HeaderText="Fees Amount" />
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:LinkButton ID="rb" Text="Select" runat="server" CommandName="select1" GroupName="pp"></asp:LinkButton></ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                            <SortedDescendingHeaderStyle BackColor="#4870BE" />
                        </asp:GridView>
                    <%--</ContentTemplate>
                </asp:UpdatePanel>--%>
            </div>
        </div>
    </div>
    <br />
    <div class="row-fluid">
        <div class="span12">
          <%--  <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                <ContentTemplate>--%>
                    <asp:Panel ID="pnlcreditordetails" runat="server" Visible="false">
                        <div class="form-horizontal form-large">
                            <h3 class="title-divider">
                                <span>Creditor</span>
                                <asp:Button ID="Button2" runat="server" Text="Notes" CssClass="btn btn-success creditor check pull-right "
                                    OnClick="Button2_Click" /></h3>
                            </h3>
                            <div class="span12">
                                <div class="span5">
                                    <div class="control-group">
                                        <label class="control-label" for="Creditor Full Name">
                                            Creditor Name</label>
                                        <div class="controls">
                                            <asp:TextBox ID="txtCreditor" runat="server" placeholder="Creditor Name"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="span5">
                                    <div class="control-group">
                                        <label class="control-label" for="Last Name">
                                            Creditor Type</label>
                                        <div class="controls">
                                            <asp:DropDownList ID="ddltype" runat="server">
                                                <asp:ListItem Text="Online"></asp:ListItem>
                                                <asp:ListItem Text="Store Front"></asp:ListItem>
                                                <asp:ListItem Text="Both"></asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="span12">
                                <div class="span5">
                                    <div class="control-group">
                                        <label class="control-label" for="Last Name">
                                            Creditor Status</label>
                                        <div class="controls">
                                            <asp:DropDownList ID="DropDownList1" runat="server">
                                                <asp:ListItem Text="Legal"></asp:ListItem>
                                                <asp:ListItem Text="Client aid Off"></asp:ListItem>
                                                <asp:ListItem Text="Client Removed"></asp:ListItem>
                                                <asp:ListItem Text="Settled"></asp:ListItem>
                                                <asp:ListItem Text="Debt does not Exist"></asp:ListItem>
                                                <asp:ListItem Text="Offer Pending"></asp:ListItem>
                                                <asp:ListItem Text="SIF Pending"></asp:ListItem>
                                                <asp:ListItem Text="Payment Plan"></asp:ListItem>
                                                <asp:ListItem Text="Payment Plan Default"></asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                </div>
                                <div class="span5">
                                    <div class="control-group">
                                        <label class="control-label" for="Balance">
                                            Original Balance</label>
                                        <div class="controls">
                                            <%--<input type="text" placeholder="Balance" />--%>
                                            <asp:TextBox ID="TextBox6" runat="server" placeholder="Balance"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="span12">
                                <div class="span5">
                                    <div class="control-group">
                                        <label class="control-label" for="Account Number">
                                            Account Number</label>
                                        <div class="controls">
                                            <asp:TextBox ID="txtAccNo" runat="server" placeholder="Account Number"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="span5">
                                    <div class="control-group">
                                        <label class="control-label" for="New Account Number">
                                            New Account No</label>
                                        <div class="controls">
                                            <asp:TextBox ID="txtNewAccno" runat="server" placeholder="New Account Number"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="span12">
                                <div class="span5">
                                    <div class="control-group">
                                        <label class="control-label" for="SSN">
                                            New Creditor</label>
                                        <div class="controls">
                                            <asp:TextBox ID="txtCredit" runat="server" placeholder="New Credit"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="span5">
                                    <div class="control-group">
                                        <label class="control-label" for="New Account Number">
                                            Settlment Amount</label>
                                        <div class="controls">
                                            <asp:TextBox ID="TextBox2" runat="server" placeholder="Settlment Amount"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="span12">
                                <div class="span5">
                                    <div class="control-group">
                                        <label class="control-label" for="SSN">
                                            Balance Settlment</label>
                                        <div class="controls">
                                            <asp:TextBox ID="TextBox1" runat="server" placeholder="Balance at Settlment"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="span5">
                                    <div class="control-group">
                                        <label class="control-label" for="New Account Number">
                                            Settlment Fees</label>
                                        <div class="controls">
                                            <asp:TextBox ID="TextBox4" runat="server" placeholder="Settlment Fees"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="span12">
                                <div class="span5">
                                    <div class="control-group">
                                        <label class="control-label" for="SSN">
                                            Settlment %</label>
                                        <div class="controls">
                                            <asp:TextBox ID="TextBox3" runat="server" placeholder="New Credit"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="span5">
                                    <div class="control-group">
                                        <label class="control-label" for="SSN">
                                            Negotiator</label>
                                        <div class="controls">
                                            <asp:TextBox ID="TextBox5" runat="server" placeholder="Negotiator"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="span12">
                                <div class="span5">
                                </div>
                                <div class="span5">
                                    <div class="control-group">
                                        <label class="control-label" for="New Account Number">
                                        </label>
                                        <div class="controls">
                                            <%--<asp:TextBox ID="TextBox6" runat="server" placeholder="Settlment Fees"></asp:TextBox>--%>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="control-group  text-center">
                                <div class="controls">
                                    <asp:Button ID="btnAdd" runat="server" Text="Update" CssClass="btn btn-success submit" />
                                </div>
                            </div>
                        </div>
                    </asp:Panel>
                <%--</ContentTemplate>
            </asp:UpdatePanel>--%>
        </div>
    </div>
    <div class="row-fluid" id="grdnote" runat="server" visible="false">
        <div class="span12">
            <div class="form-horizontal form-large">
                <h3 class="title-divider">
                    <span>Show Ticket Note History</span></h3>
                <asp:GridView ID="gridnote" runat="server" CssClass="table table-striped table-bordered table-condensed"
                    GridLines="None" AutoGenerateColumns="False">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="ticketid" HeaderText="Ticket ID" />
                        <asp:BoundField DataField="notedate" HeaderText="Note Date" />
                        <asp:BoundField DataField="note" HeaderText="Description" />
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>
    <br />
    <%--<div class="row-fluid">
                        <div class="span3 offset5">
                            <asp:Button ID="btn" runat="server" Text="Update" CssClass="btn btn-success submit" />
                        </div>
                    </div>--%>
</asp:Content>
