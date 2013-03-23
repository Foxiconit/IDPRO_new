<%@ Page Title="" Language="C#" MasterPageFile="~/web/Orientation/Orientation.Master"
    AutoEventWireup="true" CodeBehind="Greeting.aspx.cs" Inherits="IDPRO.web.Orientation.Greeting" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="span12">
        <div class="span8 cs">
            <blockquote class="example-right">
                <p>
                    Hello this is ( ). I am a senior manager from Payday Loan Debt Assistance. I am
                    calling to welcome you to our program, review some key points with you and to answer
                    any questions you may have.
                </p>
            </blockquote>
        </div>
    </div>
    <div class="span12">
        <div class="row-fluid">
            <div class="span4 form-horizontal">
                <asp:RadioButtonList ID="rdb" runat="server" CssClass="radio inline" RepeatDirection="Vertical">
                    <asp:ListItem Text="Want's to remove or add Lender" Value="1" Selected="True" />
                    <asp:ListItem Text="Go Next" Value="2" />
                </asp:RadioButtonList>
                <br />
                <br />
                <asp:Button ID="Button1" runat="server"
                    CssClass="btn btn-success submit" Text="Next" onclick="Button1_Click" />
                
            </div>
        </div>
    </div>
</asp:Content>
