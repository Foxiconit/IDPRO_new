<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true"
    CodeBehind="Plan.aspx.cs" Inherits="IDPRO.Plan" %>

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
                                    <li class=""><a href="Creditor.aspx">Creditor Info</a></li>
                                    <li class="active"><a href="Plan.aspx">Plan Info</a></li>
                                    <li class=""><a href="BankInfo.aspx">Bank Info</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="span6">
                            <div class="form-horizontal form-medium plan">
                                <h3 class="title-divider">
                                    <span>Plan Information</span></h3>
                                <div class="control-group">
                                    <label class="control-label" for="Last Name">
                                        Program Type</label>
                                    <div class="controls">
                                        <asp:DropDownList ID="DropDownList1" class="span7" runat="server">
                                            <asp:ListItem Text="PDLDS-With FSK"></asp:ListItem>
                                            <asp:ListItem Text="PDLDS-NO FSK"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="First Name">
                                        Debt Total</label>
                                    <div class="controls">
                                        <asp:TextBox ID="txtDebt" runat="server" placeholder="Debt Total" CssClass="span7"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="Last Name">
                                        List of Plan Months</label>
                                    <div class="controls">
                                        <asp:DropDownList ID="DropDownList7" class="span7" runat="server">
                                            <asp:ListItem Text="6"></asp:ListItem>
                                            <asp:ListItem Text="9"></asp:ListItem>
                                            <asp:ListItem Text="12"></asp:ListItem>
                                            <asp:ListItem Text="15"></asp:ListItem>
                                            <asp:ListItem Text="24"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="inputEmail">
                                        Start Date</label>
                                    <div class="controls">
                                        <div class="bfh-datepicker" data-format="y-m-d" data-date="2013-01-01">
                                            <div class="input-prepend bfh-datepicker-toggle" data-toggle="bfh-datepicker">
                                                <span class="add-on"><i class="icon-calendar"></i></span>
                                                <asp:TextBox ID="txtDOB" runat="server" CssClass="span8"></asp:TextBox>
                                            </div>
                                            <div class="bfh-datepicker-calendar">
                                                <table class="calendar table table-bordered">
                                                    <thead>
                                                        <tr class="months-header">
                                                            <th class="month" colspan="4">
                                                                <a class="previous" href="#"><i class="icon-chevron-left"></i></a><span></span><a
                                                                    class="next" href="#"><i class="icon-chevron-right"></i></a>
                                                            </th>
                                                            <th class="year" colspan="3">
                                                                <a class="previous" href="#"><i class="icon-chevron-left"></i></a><span></span><a
                                                                    class="next" href="#"><i class="icon-chevron-right"></i></a>
                                                            </th>
                                                        </tr>
                                                        <tr class="days-header">
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="Last Name">
                                        Schedule Type</label>
                                    <div class="controls">
                                        <asp:DropDownList ID="ddltype" class="span7" runat="server">
                                            <asp:ListItem Text="Weekly"></asp:ListItem>
                                            <asp:ListItem Text="Bi-weekly"></asp:ListItem>
                                            <asp:ListItem Text="Semi Monthly"></asp:ListItem>
                                            <asp:ListItem Text="Monthly"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="Last Name">
                                        Estimated Settlement</label>
                                    <div class="controls">
                                        <asp:DropDownList ID="DropDownList6" class="span7" runat="server">
                                            <asp:ListItem Text="65%"></asp:ListItem>
                                            <asp:ListItem Text="75%"></asp:ListItem>
                                            <asp:ListItem Text="85%"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="Balance">
                                        Fees</label>
                                    <div class="controls">
                                        <asp:TextBox ID="txtFees" runat="server" CssClass="span7" placeholder="40%"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="control-group text-center">
                                    <div class="controls">
                                        <button class="btn btn-success submit" type="submit">
                                            Save</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="span5">
                            <div class="form-horizontal form-medium plan">
                                <h3 class="title-divider">
                                    <span>Plan Details</span></h3>
                                <div class="control-group">
                                    <label class="control-label" for="First Name">
                                        Est. Settlement Amount:</label>
                                    <div class="controls">
                                        $5,41,440
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="Last Name">
                                        Est. Settlement Fees:</label>
                                    <div class="controls">
                                        $2,440
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="SSN">
                                        FSK Fees:</label>
                                    <div class="controls">
                                        $340
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="inputEmail">
                                        GCS Start Up Fees:</label>
                                    <div class="controls">
                                        $340
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="inputEmail">
                                        GCS Total Fees:</label>
                                    <div class="controls">
                                        $340
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="inputEmail">
                                        Programme Months:</label>
                                    <div class="controls">
                                        5 Months
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="inputEmail">
                                        Payment Frequency:</label>
                                    <div class="controls">
                                        10
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="inputEmail">
                                        Payment Amount:</label>
                                    <div class="controls">
                                        $1870
                                    </div>
                                </div>
                                <div class="control-group well">
                                    <div class="control-group">
                                        <label class="control-label" for="inputEmail">
                                            Total Program Cost:</label>
                                        <div class="controls text-info">
                                            <b>$2340</b>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <br />
                    <br />
                    <div class="row-fluid">
                        <div class="span12">
                            <div class="form-horizontal form-large">
                                <h3 class="title-divider">
                                    <span>Payment Details</span></h3>
                                <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped table-bordered table-condensed"
                                    GridLines="None" AutoGenerateColumns="False">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:BoundField DataField="NewAccountNumber" HeaderText="Payment" />
                                        <asp:BoundField DataField="Name" HeaderText="Payment Date" />
                                        <asp:BoundField DataField="Type" HeaderText="Amount" />
                                        <asp:BoundField DataField="AccountNumber" HeaderText="Saving" />
                                        <asp:BoundField DataField="NewCredit" HeaderText="Fees" />
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
    </div>
</asp:Content>
