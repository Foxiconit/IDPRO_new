<%@ Page Title="" Language="C#" MasterPageFile="~/web/Customer/Customer.Master" AutoEventWireup="true"
    CodeBehind="BankInfo.aspx.cs" Inherits="IDPRO.web.Customer.BankInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row-fluid">
        <div class="span12 ">
            <div class="form-horizontal form-large bankinfo">
                <h3 class="title-divider">
                    <span>Bank Information</span></h3>
                <div class="span12">
                    <div class="span5">
                        <div class="control-group">
                            <label class="control-label" for="Bank Routing No">
                                Bank Routing No</label>
                            <div class="controls">
                                <asp:TextBox ID="txtbankRouting" runat="server" placeholder="Bank Routing No"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="span1 pull-left">   
                    <a class="btn btn-small" href="#"> Check</a>
                       
                    </div>
                    <div class="span5">
                        <div class="control-group">
                            <label class="control-label" for="Bank Name ">
                                Bank Name</label>
                            <div class="controls">
                                <asp:TextBox ID="txtBankName" runat="server" placeholder="Bank Name" disabled="disabled"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="span12">
                    <div class="span5">
                        <div class="control-group">
                            <label class="control-label" for="Bank Account Number">
                                Bank Account No.</label>
                            <div class="controls">
                                <asp:TextBox ID="txtBankAcc" runat="server" placeholder="Bank Account Number"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="span1">
                    </div>
                    <div class="span5">
                        <div class="control-group">
                            <label class="control-label" for="inputEmail">
                                Bank Account type</label>
                            <div class="controls">
                                <asp:DropDownList ID="ddltype" runat="server">
                                    <asp:ListItem Text="Checking"></asp:ListItem>
                                    <asp:ListItem Text="Saving"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="span12">
                    <div class="span5">
                        <div class="control-group">
                            <label class="control-label" for="inputEmail">
                                Status</label>
                            <div class="controls">
                                <asp:DropDownList ID="DropDownList3" runat="server">
                                    <asp:ListItem Text="Active"></asp:ListItem>
                                    <asp:ListItem Text="Suspend"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>
                    <div class="span1">
                    </div>
                    <div class="span5">
                        <div class="control-group">
                            <label class="control-label" for="inputEmail">
                                Send To GCS</label>
                            <div class="controls">
                                <asp:DropDownList ID="DropDownList1" CssClass=" " runat="server">
                                    <asp:ListItem Text="Yes"></asp:ListItem>
                                    <asp:ListItem Text="No"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="span12">
                    <div class="span5">
                        <div class="control-group">
                            <label class="control-label" for="inputEmail">
                                Disable ACH</label>
                            <div class="controls">
                                <asp:DropDownList ID="DropDownList2" CssClass=" " runat="server">
                                    <asp:ListItem Text="Yes"></asp:ListItem>
                                    <asp:ListItem Text="No"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>
                    <div class="span1">
                    </div>
                    <div class="span5">
                        <%-- <div class="control-group">
                            <label class="control-label" for="inputEmail">
                                Disable ACH</label>
                            <div class="controls">
                                <asp:DropDownList ID="DropDownList4" CssClass=" " runat="server">
                                    <asp:ListItem Text="Yes"></asp:ListItem>
                                    <asp:ListItem Text="No"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>--%>
                    </div>
                </div>
                <div class="span12">
                    <div class="span6 offset3">
                        <div class="control-group">
                            <div class="controls">
                                <asp:Button ID="btnSave" CssClass="btn btn-success submit" Text="Update" runat="server"
                                    OnClick="btnSave_Click" />
                            </div>
                        </div>
                    </div>
                    <div class="span2">
                        <div class="control-group">
                            <div class="controls">
                                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                    <ContentTemplate>
                                        <asp:LinkButton ID="lnkhistory" runat="server" CssClass="pull-right" OnClick="lnkhistory_Click">History</asp:LinkButton>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="control-group text-center">
                    <div class="controls">
                        <asp:Button ID="btnnotused" Visible="false" runat="server" />
                         
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row-fluid">
        <div class="span12">
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:Panel ID="pnlhistory" runat="server" Visible="false">
                        <div class="form-horizontal form-large">
                            <h3 class="title-divider">
                                <span>History</span></h3>
                            <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped table-bordered table-condensed"
                                GridLines="None" AutoGenerateColumns="False">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:BoundField DataField="Name" HeaderText="Bank Name" />
                                    <asp:BoundField DataField="Status" HeaderText="Bank Routing Number" />
                                    <asp:BoundField DataField="OriginalBalance" HeaderText="Bank Account Number" />
                                    <asp:BoundField DataField="NewCredit" HeaderText="Bank Account Type" />
                                    <asp:BoundField DataField="BalanceatSettlment" HeaderText="Updated Date" />
                                    <asp:BoundField DataField="SettlmentAmount" HeaderText="Updated By" />
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
                        </div>
                    </asp:Panel>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>
</asp:Content>
