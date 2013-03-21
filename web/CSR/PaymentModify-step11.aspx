<%@ Page Title="" Language="C#" MasterPageFile="~/web/CSR/CustomerService.Master" AutoEventWireup="true"
    CodeBehind="PaymentModify-step11.aspx.cs" Inherits="IDPRO.web.CSR.PaymentModify_step11" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
                    <div class="row-fluid">
                        <div class="span1">
                        </div>
                        <div class="span5">
                            <div class="span10 cs">
                                <blockquote class="example-right">
                                    <p>
                                        Mr. Customer, you are not currently on a payment plan? How would you like to change
                                        your draft(s)
                                    </p>
                                </blockquote>
                            </div>
                            <asp:UpdatePanel ID="update1" runat="server">
                                <ContentTemplate>
                                    <div class="row-fluid">
                                        <div class="span10 form-horizontal">
                                            <asp:RadioButtonList ID="rdb" runat="server" CssClass="radio inline" RepeatDirection="Vertical">
                                                <asp:ListItem Text="Push Payment" Value="1" Selected="True" />
                                                <asp:ListItem Text="Partial Payment" Value="2" />
                                                <asp:ListItem Text="Push Payment , EOP" Value="3" />
                                                <asp:ListItem Text="Increase Payment" Value="4"></asp:ListItem>
                                                <asp:ListItem Text="Add Payment" Value="5"></asp:ListItem>
                                            </asp:RadioButtonList>
                                            <br />
                                            <br />
                                            <asp:Button ID="Button1" runat="server" CssClass="btn btn-success submit" Text="Select"
                                                OnClick="Button1_Click" />
                                            <span style="float: right;"><b><a href="PaymentModify-Step1.aspx">Back</a></b> </span>
                                        </div>
                                    </div>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </div>
                        <div class="span5">
                            <asp:UpdatePanel ID="update2" runat="server">
                                <ContentTemplate>
                                    <asp:Panel ID="panel1" runat="server" Visible="false">
                                        <div class="span10 cs">
                                            <blockquote class="example-right">
                                                <p>
                                                    I can definitely help you with that! What date and amount would you like the extra
                                                    draft to be?
                                                </p>
                                            </blockquote>
                                        </div>
                                        <div class="span10 form-horizontal">
                                            <div class="span12">
                                                <div class="control-group">
                                                    <label class="control-label" for="inputEmail">
                                                        Draft Date</label>
                                                    <div class="controls">
                                                        <div class="bfh-datepicker" data-format="y-m-d" data-date="2013-01-01">
                                                            <div class="input-prepend bfh-datepicker-toggle" data-toggle="bfh-datepicker">
                                                                <span class="add-on"><i class="icon-calendar"></i></span>
                                                                <asp:TextBox ID="TextBox5" runat="server" CssClass="span12"></asp:TextBox>
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
                                                    <label class="control-label" for="inputEmail">
                                                        Draft Amount
                                                    </label>
                                                    <div class="controls">
                                                        <asp:TextBox ID="TextBox8" runat="server" placeholder="Draft Amount"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                            <br />
                                            <br />
                                            <asp:Button ID="Button2" runat="server" CssClass="btn btn-success submit" Text="Select"
                                                OnClick="Button2_Click" />
                                        </div>
                                    </asp:Panel>
                                    <asp:Panel ID="panel2" runat="server" Visible="false">
                                        <div class="span10 cs">
                                            <blockquote class="example-right">
                                                <p>
                                                    Great! So you will de drafting [amount] on [date]. Thank you!
                                                </p>
                                            </blockquote>
                                        </div>
                                    </asp:Panel>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </div>
                    </div>
            
</asp:Content>
