<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true"
    CodeBehind="TicketHistory.aspx.cs" Inherits="IDPRO.web.Customer.TicketHistory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row-fluid">
        <div class="span12">
            <div class="box">
                <div class="box-header">
                    <span class="title">Customer</span>
                </div>
                <div class="box-content">
                    <div class="row-fluid">
                        <div class="span12">
                            <div class="tabbable">
                                <ul class="nav nav-tabs">
                                    <li class=""><a href="PersonalInfo.aspx">Personal Info</a></li>
                                    <li class=""><a href="BankInfo.aspx">Bank Info</a></li>
                                    <li class=""><a href="Creditor.aspx">Creditor Info</a></li>
                                    <li class=""><a href="PlanInfo.aspx">Plan Info</a></li>
                                    <li class=""><a href="Drafts.aspx">Drafts</a></li>
                                    <li class=""><a href="DateJournals.aspx">Date Journal</a></li>
                                    <li class=""><a href="IDProtection.aspx">ID Protection</a></li>
                                    <li class="active"><a href="TicketHistory.aspx">Ticket History</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <br />
                    <div class="row-fluid">
                        <div class="span12">
                            <div class="form-horizontal form-large">
                                <h3 class="title-divider">
                                    <span>Ticket History</span></h3>
                                <asp:GridView ID="grdtickethistory" runat="server" CssClass="table table-striped table-bordered table-condensed"
                                    GridLines="None" AutoGenerateColumns="False" 
                                    onrowcommand="grdtickethistory_RowCommand">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:BoundField DataField="accountid" HeaderText="Account ID" SortExpression="Name" />
                                        <asp:BoundField DataField="tickettype" HeaderText="Ticket Type ID" SortExpression="SSN" />
                                        <asp:BoundField DataField="assignto" HeaderText="Assign To" SortExpression="Days of Week" />
                                        <asp:BoundField DataField="Assignby" HeaderText="User Name" SortExpression="Time" />
                                        <asp:BoundField DataField="opendate" HeaderText="Open Date" SortExpression="End Date" />
                                        <asp:BoundField DataField="status" HeaderText="Status" SortExpression="End Date" />
                                        <asp:BoundField DataField="priority" HeaderText="Priority" SortExpression="End Date" />
                                        <asp:BoundField DataField="assigndate" HeaderText="Assign Date" SortExpression="End Date" />
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <asp:LinkButton ID="rb" Text="Notes" runat="server" CommandName="note" ></asp:LinkButton> | <asp:LinkButton
                                                    ID="LinkButton1" Text="Assignment History" runat="server" CommandName="assign"></asp:LinkButton></ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                </asp:GridView>
                            </div>
                        </div>
                    </div>


                     <div class="row-fluid" id="grdnote" runat ="server" visible ="false" >
                     
                        <div class="span12">
                            <div class="form-horizontal form-large">
                                <h3 class="title-divider">
                                    <span>Show Ticket Note History</span></h3>
                                <asp:GridView ID="gridnote" runat="server" CssClass="table table-striped table-bordered table-condensed"
                                    GridLines="None" AutoGenerateColumns="False">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:BoundField DataField="ticketid" HeaderText="Ticket ID" SortExpression="Name" />
                                        <asp:BoundField DataField="notedate" HeaderText="Note Date" SortExpression="SSN" />
                                        <asp:BoundField DataField="note" HeaderText="Description" SortExpression="Days of Week" />
                                                                           
                                    </Columns>
                                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                </asp:GridView>
                            </div>
                        </div>
                    </div>
                    <div class="row-fluid" id="grdassign" runat ="server" visible ="false"  >
                        <div class="span12">
                            <div class="form-horizontal form-large">
                                <h3 class="title-divider">
                                    <span>Show Ticket Assignment History</span></h3>
                                <asp:GridView ID="gridassignmenthistory" runat="server" CssClass="table table-striped table-bordered table-condensed"
                                    GridLines="None" AutoGenerateColumns="False">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:BoundField DataField="ticketid" HeaderText="Ticket ID" SortExpression="Name" />
                                        <asp:BoundField DataField="assignto" HeaderText="Assign To" SortExpression="Days of Week" />
                                        <asp:BoundField DataField="Assignby" HeaderText="User Name" SortExpression="Time" />
                                        <asp:BoundField DataField="assigndate" HeaderText="Assign Date" SortExpression="End Date" />
                                        
                                    </Columns>
                                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                </asp:GridView>
                            </div>
                        </div>
                    </div>
                    <br />
                    <%--<div class="row-fluid">
                        <div class="span3 offset5">
                            <asp:Button ID="btn" runat="server" Text="Save & Next" CssClass="btn btn-success submit" />
                        </div>
                    </div>--%>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
