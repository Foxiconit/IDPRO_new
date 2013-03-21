<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeLogin.aspx.cs"
    Inherits="IDPRO.EmployeeLogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <%--<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />--%>
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css" />
    <link href="css/bootstrap-formhelpers.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="container-fluid login-page well">
        <div class="row-fluid">
            <div class="span12">
                <div id="in-sub-nav">
                    <a href="" class="logo"><i class="icon-sitemap"></i></a>
                </div>
            </div>
        </div>
        <div class="row-fluid ">
            <div class="span5 offset3">
                <div class="well get-started-now bg-white">
                    <div class="form-horizontal">
                        <br />
                        <div style="padding-left:50px; color:Red;"> <asp:Label ID="lblMsg" runat ="server" ></asp:Label></div>
                        <div class="control-group">
                            <label class="control-label" for="inputEmail">
                                Username</label>
                            <div class="controls">
                                <asp:TextBox ID="txtUsername" runat="server" placeholder="Username"></asp:TextBox>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="inputPassword">
                                Password</label>
                            <div class="controls">
                                <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" placeholder="Password"></asp:TextBox>
                            </div>
                        </div>
                        <div class="control-group">
                            <div class="controls">
                                <asp:Button ID="btnLogin" runat="server" CssClass="btn btn-success submit"
                                    Text="Login" onclick="btnLogin_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="js/jquery-1.9.0.min.js" type="text/javascript"></script>
    <script src="js/bootstrap.js" type="text/javascript"></script>
    <script src="js/bootstrap-formhelpers-selectbox.js" type="text/javascript"></script>
    <script src="js/bootstrap-formhelpers-states.en_US.js" type="text/javascript"></script>
    <script src="js/bootstrap-formhelpers-states.js" type="text/javascript"></script>
    <script src="js/bootstrap-formhelpers-datepicker.js" type="text/javascript"></script>
    <script src="js/bootstrap-formhelpers-datepicker.en_US.js" type="text/javascript"></script>
    </form>
</body>
</html>
