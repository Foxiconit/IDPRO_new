<%@ Page Title="" Language="C#" MasterPageFile="~/web/Orientation/Orientation.Master"
    AutoEventWireup="true" CodeBehind="5Keys.aspx.cs" Inherits="IDPRO.web.Orientation._5Keys" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row-fluid">
        <div class="span12">
            <h2 class="title-divider1">
                <span>5 Keys to Success!</span></h2>
        </div>
        <div class="span11 well">The 5 things we need you to do during the program:</div>
    </div>
    <div class="row-fluid">
        <div class="span2 cs">
            <div class="example-rightno">
                <h6>
                    #1 – Be Available</h6>
                <p>
                   We must be able to reach you within a reasonable amount of time in order to get your approval on settlements or deal with other issues that may arise, remember most settlements will be time sensitive and we may miss a great settlement opportunity if we cannot get your approval.
                </p>
            </div>
        </div>
        <div class="span2 cs">
            <div class="example-rightno">
                <h6>
                    #2 – Keep Saving
                </h6>
                <p>
                    The success of your program is directly related to your ability to make your payments
                    into your savings account.
                </p>
            </div>
        </div>
        <div class="span3 cs">
            <div class="example-rightno">
                <h6>
                    #3 – Stay Calm and Communicate
                </h6>
                <p>
                    You may receive some calls from your creditors and their collection agencies. Do
                    not let this alarm you and do not let collectors scare or intimidate you. It is
                    common for payday lenders or their collection agencies to tell customers that they
                    do not work with us or we have not contacted them. They are only interested in having
                    you pay them immediately because we will likely get better terms. Please stay calm
                    and contact us immediately so that we can clarify and handle the situation for you;
                    after all, that’s why you hired us! Forward copies of any correspondence from your
                    creditors and notify us if one of your loans has been sold or transferred to a 3rd
                    Party Collection Agency.
                </p>
            </div>
        </div>
        <div class="span2 cs">
            <div class="example-rightno">
                <h6>
                    #4 – Be Patient
                </h6>
                <p>
                    Patience is required in a debt settlement program. Results are not created overnight,
                    and it may be several months before you receive your first settlement. Rest assured
                    that we are experts at payday loan debt settlement and will be working diligently
                    to get you the best settlements possible. Finally….
                </p>
            </div>
        </div>
        <div class="span2 cs">
            <div class="example-rightno">
                <h6>
                    #5 – Protect Yourself
                </h6>
                <p>
                    We do want to warn you there are some fraudulent companies that pretend they are
                    legitimate collectors but they are not. What steps have you taken to protect your
                    personal information that was disclosed when you applied for these payday loans?
                </p>
            </div>
        </div>
         <div class="span12">
                            <asp:Button ID="btnSave" CssClass="btn btn-success submit" PostBackUrl="~/web/Orientation/REBUTTALS.aspx" Text="Next" runat="server" />
         </div>
    </div>
</asp:Content>
