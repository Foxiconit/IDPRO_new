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
                        <span>Creditor</span> <a data-toggle="modal" data-target="#myModal" class="btn btn-success creditor  check pull-right"
                            href="#"><i class="icon-comment"></i>&nbsp;Notes</a>
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
            <div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
                aria-hidden="true">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                        ×</button>
                    <h3 id="myModalLabel">
                        Notes History</h3>
                    <asp:Label ID="lblsuc" runat="server" Text="Well done! You successfully post your property with us."
                        class="alert alert-success" Visible="false"></asp:Label>
                </div>
                <div class="modal-body">
                    <div class="bs-docs-example">
                        <div class="media hr">
                            <a class="pull-left" href="#"><i class="icon-user icon-3x black"></i></a>
                            <div class="media-body">
                                <h4 class="media-heading">
                                    Name <span class="comments">20 March 2013</span></h4>
                                <small>Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum
                                    nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.</small>
                            </div>
                        </div>
                        <div class="media hr">
                            <a class="pull-left" href="#"><i class="icon-user icon-3x black"></i></a>
                            <div class="media-body">
                                <h4 class="media-heading">
                                    Name <span class="comments">28 March 2013</span></h4>
                                <small>Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante
                                    sollicitudin commodo. Cras purus odio, </small>
                            </div>
                        </div>
                    </div>
                    <%-- <asp:GridView ID="gridnote" runat="server" CssClass="table table-striped table-bordered table-condensed"
                        GridLines="None" AutoGenerateColumns="False">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="ticketid" HeaderText="Ticket ID" />
                            <asp:BoundField DataField="notedate" HeaderText="Note Date" />
                            <asp:BoundField DataField="note" HeaderText="Description" />
                        </Columns>
                    </asp:GridView>--%>
                </div>
        <div class="modal-footer">
            <asp:Button ID="btncallme" ValidationGroup="call1" CssClass="btn btn-success" runat="server"
                Text="Ok" />
            <button class="btn" data-dismiss="modal" aria-hidden="true">
                Close</button>
        </div>
    </div>
    <%--</ContentTemplate>        
            </asp:UpdatePanel>--%>
    </div> </div>
    
    <br />
    <%--<div class="row-fluid">
                        <div class="span3 offset5">
                            <asp:Button ID="btn" runat="server" Text="Update" CssClass="btn btn-success submit" />
                        </div>
                    </div>--%>
</asp:Content>
