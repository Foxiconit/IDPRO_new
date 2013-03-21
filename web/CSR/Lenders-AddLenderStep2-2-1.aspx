<%@ Page Title="" Language="C#" MasterPageFile="~/web/CSR/CustomerService.Master"
    AutoEventWireup="true" CodeBehind="Lenders-AddLenderStep2-2-1.aspx.cs" Inherits="IDPRO.Lenders_AddLenderStep3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="span11">
        <div class="span6 cs">
            <blockquote class="example-right">
                <p>
                    "Can I have some information of your new Loan?"
                </p>
            </blockquote>
        </div>
    </div>
    <div class="span12">
        <div class="row-fluid">
            <div class="span5 form-horizontal">
                <asp:UpdatePanel ID="upnlnaddloan" runat="server">
                    <ContentTemplate>
                        <h3 class="title-divider">
                            <span>Add New Loan</span></h3>
                        <div class="span12">
                            <div class="control-group">
                                <label class="control-label label120" for="Bank Routing No">
                                    Lender Name</label>
                                <div class="controls">
                                    <asp:TextBox ID="txtbankRouting" runat="server" placeholder="Lender Name"></asp:TextBox>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label label120" for="Bank Name ">
                                    Account Number</label>
                                <div class="controls">
                                    <asp:TextBox ID="txtBankName" runat="server" placeholder="Account Number"></asp:TextBox>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label label120" for="Bank Account Number">
                                    Loan Balance</label>
                                <div class="controls">
                                    <asp:TextBox ID="txtBankAcc" runat="server" placeholder="Loan Balance"></asp:TextBox>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label label120" for="inputEmail">
                                    Loan Date</label>
                                <div class="controls">
                                    <div class="bfh-datepicker" data-format="y-m-d" data-date="2000-01-01">
                                        <div class="input-prepend bfh-datepicker-toggle" data-toggle="bfh-datepicker">
                                            <span class="add-on"><i class="icon-calendar"></i></span>
                                            <asp:TextBox ID="txtDate" runat="server" CssClass="span12"></asp:TextBox>
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
                                                </thead>
                                                <tbody>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="control-group text-center">
                                <div class="controls">
                                    <asp:Button ID="btnSave" CssClass="btn btn-success submit" Text="Open Ticket" runat="server"
                                        OnClick="btnSave_Click" />
                                    <b><a href="Lenders-AddLenderStep2-2.aspx">Back</a></b>
                                </div>
                            </div>
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
            <div class="span1">
            </div>
            <%--<asp:UpdatePanel ID="upnlticket" runat="server">
                <ContentTemplate>--%>
                      <asp:Panel ID="pnlticket" runat="server">
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
                                                            <%--<asp:TextBox ID="txttickettype" required pattern="[ a-zA-Z0-9,#.-/]+" runat="server" placeholder="Ticket Type"></asp:TextBox>--%>
                                                            <asp:DropDownList ID="drptickettype" runat="server">
                                                            </asp:DropDownList>
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
                                                            <asp:DropDownList ID="dropPriorty" runat="server">
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
                                                            <asp:DropDownList ID="DropAssignedTo" runat="server">
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
                                                            <asp:TextBox ID="txtdescription" required pattern="[ a-zA-Z0-9,#.-/]+" runat="server"
                                                                Rows="10" CssClass="span12" Columns="50" TextMode="MultiLine" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="control-group  text-center">
                                                <div class="controls">
                                                    <asp:Button ID="btnAdd" runat="server" Text="Submit" CssClass="btn btn-success submit"
                                                        OnClick="btnAdd_Click" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </asp:Panel>
                                <asp:Panel ID="pnlmsg" runat="server" Visible="false">
                                    <div style="height: 400px; padding-left: 100px;">
                                        <asp:Label ID="lblmsg" runat="server"></asp:Label>
                                    </div>
                                </asp:Panel>
               <%-- </ContentTemplate>
            </asp:UpdatePanel>--%>
        </div>
    </div>
</asp:Content>
