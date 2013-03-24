<%@ Page Title="" Language="C#" MasterPageFile="~/web/Orientation/Orientation.Master"
    AutoEventWireup="true" CodeBehind="Services.aspx.cs" Inherits="IDPRO.web.Orientation.Services" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="span12" id="4services">
        <div class="form-horizontal form-large">
            <h3 class="title-divider">
                <span>We have partnered with a program called Info Armor which is rated “A” by the BBB.</span></h3>
            <div class="span11 well">
                You can get Identity theft protection and real time monitoring for only 50 cents
                per day which includes the following:
            </div>
            <div class="span11">
                <br />
                <b>1. Real Time Identity Monitoring system: </b>
                <br />
                System that builds a blue print of your online electronic “signature” by analyzing
                700 BILLION data elements. It will create an alert if it sees questionable or probable
                ID theft issues. Identity Monitoring searches and monitors for past history as well
                as real time identity frauds or threats.
                <br />
                It can detect misuse or even an elevated likelihood for misuse of your Social Security
                number, name, address, phone, and date of birth.
            </div>
            <div class="span11">
                <br />
                <b>2. Identity Theft Insurance*: </b>
                <br />
                You will also receive up to $25,000 worth of identity theft insurance This coverage
                will help offset some of the cost of restoring your identity to its original status
                including:
                <ul>
                    <li>Lost wages: $500.00 per week, for 4 weeks maximum</li>
                    <li>Defense cost for certain civil & criminal law suits</li>
                </ul>
            </div>
            <div class="span11">
                <br />
                <b>3. Identity Theft Restoration:</b>
                <br />
                Upon notification of an identity theft incident, Privacy Advocates will act on your
                behalf as a dedicated case manager to:
                <ul>
                    <li>Assist you with the restoration of your identity to its pre-theft state. Investigate
                        and confirm the fraudulent activity. Issue fraud alerts and victim statements when
                        necessary, with the three consumer credit reporting agencies, Provide peace of mind
                        and resolution of key issues from start to finish as swiftly as possible.</li></ul>
            </div>
            <div class="span11">
                <br />
                <b>4. Lost or Stolen Credit Card Assistance / Document Recovery Services: </b>
                <br />
                Privacy Advocates will assist members in the event their credit cards are misplaced
                or stolen. Up to six credit reports from established credit bureaus
            </div>
            <div class="control-group text-center">
                <div class="controls">
                    <asp:Button ID="btnSave" CssClass="btn btn-success submit" Text="Next" runat="server" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
