<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Customers.aspx.cs" Inherits="IDPRO.web.Customer.Customers" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

      <meta name="robots" content="noindex, nofollow">
    <link href="../../StyleSheet.css" rel="stylesheet" type="text/css" />
    <%--<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />--%>
    <link href="../../css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="../../css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="../../css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css" />
    <link href="../../css/bootstrap-formhelpers.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
     <asp:ScriptManager ID="scriptmanager" runat="server">
    </asp:ScriptManager>
    <div class="container">
        <div class="row-fluid">
            <div class="span12">
                <div id="in-sub-nav">
                    <ul class="nav nav-tabs" id="mymain">
                        <li class=""><a href="./Customers.aspx" id="cust" runat="server"><i class="icon-suitcase">
                        </i>
                            <br>
                            Customer</a></li>
                        <li class=""><a href="#" id="ticketing" runat="server"><i class="icon-retweet"></i>
                            <br>
                            Ticketing</a></li>
                        <li class=""><a id="A1" href=".../Mails.aspx" runat="server"><i class="icon-envelope">
                        </i>
                            <br>
                            Email</a></li>
                        <li class=""><a id="A2" href="Dashboard.aspx" runat="server"><i class="icon-dashboard">
                        </i>
                            <br>
                            Dashboard</a></li>
                        <li class=""><a id="A3" href="./Reports.aspx" runat="server"><i class="icon-bar-chart">
                        </i>
                            <br>
                            Reports</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="row-fluid">
            <div class="span12">
                <div class="box">
                    <div class="box-header">
                        <span class="title">Customer</span>
                    </div>
                    <div class="box-content">
                        <div class="row-fluid">
                            <div class="span12">
                            </div>
                        </div>
                        <div class="row-fluid">
                            <div class="span12">
                                <div class="form-horizontal form-large">
                                    <h3 class="title-divider">
                                        <span>Search Client Information</span></h3>
                                    <div class="span12">
                                        <div class="span5">
                                            <div class="control-group">
                                                <label class="control-label" for="First Name">
                                                    First Name</label>
                                                <div class="controls">
                                                    <asp:TextBox ID="txtFname" runat="server" placeholder="First Name"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="span5">
                                            <div class="control-group">
                                                <label class="control-label" for="Last Name">
                                                    Last Name</label>
                                                <div class="controls">
                                                    <asp:TextBox ID="txtLname" runat="server" placeholder="Last Name"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="span12">
                                        <div class="span5">
                                            <div class="control-group">
                                                <label class="control-label" for="Address">
                                                    Phone</label>
                                                <div class="controls">
                                                    <asp:TextBox ID="txtPhone" runat="server" placeholder="Phone"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="span5">
                                            <div class="control-group">
                                                <label class="control-label" for="Address">
                                                    Email</label>
                                                <div class="controls">
                                                    <asp:TextBox ID="txtEmail" runat="server" placeholder="Email"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="span12">
                                        <div class="span5">
                                            <div class="control-group">
                                                <label class="control-label" for="SSN">
                                                    SSN</label>
                                                <div class="controls">
                                                    <asp:TextBox ID="txtSsn1" runat="server" Text="XXX" CssClass="span2"></asp:TextBox>
                                                    -
                                                    <asp:TextBox ID="txtSsn2" runat="server" Text="XXX" CssClass="span3"></asp:TextBox>
                                                    -
                                                    <asp:TextBox ID="txtSsn3" CssClass="span4" placeholder="Last 4 Digits" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="span5">
                                            <div class="control-group">
                                                <label class="control-label" for="inputEmail">
                                                    Client ID</label>
                                                <div class="controls">
                                                    <asp:TextBox ID="txtClient" runat="server" placeholder="Client ID"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="control-group  text-center">
                                        <div class="controls">
                                            <asp:Button ID="btnSearch" runat="server" CssClass="btn btn-success submit" Text="Search" />
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
                                        <span>Search Results</span></h3>
                                    <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped table-bordered table-condensed"
                                        GridLines="None" AutoGenerateColumns="False">
                                        <AlternatingRowStyle BackColor="White" />
                                        <Columns>
                                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                            <asp:BoundField DataField="SSN" HeaderText="SSN" SortExpression="SSN" />
                                            <asp:BoundField DataField="ClientID" HeaderText="Client ID" SortExpression="Days of Week" />
                                            <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Time" />
                                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="End Date" />
                                            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="End Date" />
                                            <asp:TemplateField>
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="rb" Text="Select" runat="server" PostBackUrl="~/web/Customer/PersonalInfo.aspx"
                                                        GroupName="pp"></asp:LinkButton></ItemTemplate>
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
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="../../js/jquery-1.9.0.min.js" type="text/javascript"></script>
    <script src="../../js/bootstrap.js" type="text/javascript"></script>
    <script src="../../js/bootstrap-formhelpers-selectbox.js" type="text/javascript"></script>
    <script src="../../js/bootstrap-formhelpers-states.en_US.js" type="text/javascript"></script>
    <script src="../../js/bootstrap-formhelpers-states.js" type="text/javascript"></script>
    <script src="../../js/bootstrap-formhelpers-datepicker.js" type="text/javascript"></script>
    <script src="../../js/bootstrap-formhelpers-datepicker.en_US.js" type="text/javascript"></script>
    <script src="../../js/twitter-bootstrap-hover-dropdown.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            var url = window.location.pathname;
            var substr = url.split('/');
            var urlaspx = substr[substr.length - 1];
            $('#mymain').find('.active').removeClass('active');
            $('#mymain li a').each(function () {
                if (this.href.indexOf(urlaspx) >= 0) {
                    $(this).parent().addClass('active');
                }
            });
        });
    </script>
    </form>
</body>
</html>
