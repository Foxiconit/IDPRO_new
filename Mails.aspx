<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true"
    CodeBehind="Mails.aspx.cs" Inherits="IDPRO.Mails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row-fluid">
        <div class="span12">
            <div class="box-content">
                <div class="row-fluid">
                    <div class="span12">
                        <div class="form-horizontal">
                            <h3 class="title-divider">
                                <span>Mails </span>
                            </h3>
                            <iframe name="myIframe" id="myIframe" src="http://realtyadda.com/webmail2/" width="100%"
                                height="800px" runat="server"></iframe>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
