<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true"
    CodeBehind="Creditor.aspx.cs" Inherits="IDPRO.Creditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row-fluid">
        <div class="span12">
            <div class="box">
                <div class="box-header">
                    <span class="title">Customer Overview</span>
                </div>
                <div class="box-content">
                    <div class="row-fluid">
                        <div class="span12">
                            <div class="span3 cr-horizontal">
                                <div class="span12">
                                    <div class="control-group">
                                        <label class="control-label" for="First Name">
                                            Name :</label>
                                        <div class="controls">
                                            <asp:Label ID="Label4" runat="server" Text="John Michal"></asp:Label>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label" for="First Name">
                                            Account Id :</label>
                                        <div class="controls">
                                            <asp:Label ID="Label1" runat="server" Text="125 558821"></asp:Label>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label" for="First Name">
                                            Status :</label>
                                        <div class="controls">
                                            <asp:Label ID="Label2" runat="server" Text="Active"></asp:Label>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label" for="First Name">
                                            SSN :</label>
                                        <div class="controls">
                                            <asp:Label ID="Label3" runat="server" Text="000 999 0000"></asp:Label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="span3 cr-horizontal">
                                <div class="span12">
                                    <div class="control-group">
                                        <label class="control-label" for="First Name">
                                            Total Debt Loaded :</label>
                                        <div class="controls">
                                            <asp:Label ID="Label5" runat="server" Text="$2000"></asp:Label>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label" for="First Name">
                                            Program Legnth :</label>
                                        <div class="controls">
                                            <asp:Label ID="Label6" runat="server" Text="12 Months"></asp:Label>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label" for="First Name">
                                            Monthly payment :</label>
                                        <div class="controls">
                                            <asp:Label ID="Label7" runat="server" Text="$500"></asp:Label>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label" for="First Name">
                                            Program Type :</label>
                                        <div class="controls">
                                            <asp:Label ID="Label8" runat="server" Text="Full "></asp:Label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="span3 cr-horizontal">
                                <div class="span12">
                                    <div class="control-group">
                                        <label class="control-label" for="First Name">
                                            GCS Account No :</label>
                                        <div class="controls">
                                            <asp:Label ID="Label9" runat="server" Text="123-254587"></asp:Label>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label" for="First Name">
                                            Current Balance :</label>
                                        <div class="controls">
                                            <asp:Label ID="Label10" runat="server" Text="$25000"></asp:Label>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label" for="First Name">
                                            Available Money :</label>
                                        <div class="controls">
                                            <asp:Label ID="Label11" runat="server" Text="$50000"></asp:Label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="span3 cr-horizontal">
                                <div class="span12">
                                    <div class="control-group">
                                        <label class="control-label" for="First Name">
                                            Sales Rep :</label>
                                        <div class="controls">
                                            <asp:Label ID="Label12" runat="server" Text="Simon J"></asp:Label>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label" for="First Name">
                                            Negotiator :</label>
                                        <div class="controls">
                                            <asp:Label ID="Label13" runat="server" Text="No"></asp:Label>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label" for="First Name">
                                            CSR :</label>
                                        <div class="controls">
                                            <asp:Label ID="Label14" runat="server" Text="Empty"></asp:Label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
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
                                    <li class="active"><a href="Creditor.aspx">Creditor Info</a></li>
                                    <li class=""><a href="Plan.aspx">Plan Info</a></li>
                                    <li class=""><a href="BankInfo.aspx">Bank Info</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="row-fluid">
                        <div class="span12">
                            <div class="form-horizontal form-large">
                                <h3 class="title-divider">
                                    <span>Add Creditor</span></h3>
                                <div class="span12">
                                    <div class="span5">
                                        <div class="control-group">
                                            <label class="control-label" for="Creditor Full Name">
                                                Creditor</label>
                                            <div class="controls">
                                                <asp:TextBox ID="txtCreditor" runat="server" placeholder="Creditor"></asp:TextBox>
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
                                                </asp:DropDownList>
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
                                            <label class="control-label" for="Balance">
                                                Balance</label>
                                            <div class="controls">
                                                <%--<input type="text" placeholder="Balance" />--%>
                                                <asp:TextBox ID="txtBalance" runat="server" placeholder="Balance"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="span12">
                                    <div class="span5">
                                        <div class="control-group">
                                            <label class="control-label" for="SSN">
                                                New Credit</label>
                                            <div class="controls">
                                                <asp:TextBox ID="txtCredit" runat="server" placeholder="New Credit"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="span5">
                                        <div class="control-group">
                                            <label class="control-label" for="New Account Number">
                                                New Account Number</label>
                                            <div class="controls">
                                                <asp:TextBox ID="txtNewAccno" runat="server" placeholder="New Account Number"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="control-group  text-center">
                                    <div class="controls">
                                        <asp:Button ID="btnAdd" runat="server" Text="Add" CssClass="btn btn-success submit" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <br />
                    <div class="row-fluid">
                        <div class="span12">
                            <div class="form-horizontal form-large">
                                <h3 class="title-divider">
                                    <span>Creditors</span></h3>
                                <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped table-bordered table-condensed"
                                    GridLines="None" AutoGenerateColumns="False">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:BoundField DataField="Name" HeaderText="Creditor" />
                                        <asp:BoundField DataField="Type" HeaderText="Type" />
                                        <asp:BoundField DataField="AccountNumber" HeaderText="Account Number" />
                                        <asp:BoundField DataField="NewCredit" HeaderText="Balance" />
                                        <asp:BoundField DataField="NewCreditor" HeaderText="New Creditor" />
                                        <asp:BoundField DataField="NewAccountNumber" HeaderText="New Account Number" />
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <asp:LinkButton ID="rb" Text="Update" runat="server" GroupName="pp"></asp:LinkButton></ItemTemplate>
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
                    <br />
                    <div class="row-fluid">
                        <div class="span3 offset5">
                            <asp:Button ID="btn" runat="server" Text="Save & Next" CssClass="btn btn-success submit" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Container -->
    </div>
</asp:Content>
