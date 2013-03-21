<%@ Page Title="" Language="C#" MasterPageFile="~/web/Customer/Customer.Master" AutoEventWireup="true"
    CodeBehind="IDProtection.aspx.cs" Inherits="IDPRO.web.Customer.IDProtection" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
                    <div class="row-fluid">
                        <div class="span12">
                            <h3 class="title-divider">
                                <span>ID Protection</span></h3>
                            <div class="span1">
                                Client
                            </div>
                            <div class="span2">
                                <asp:DropDownList ID="ddl" runat="server" CssClass="span9">
                                    <asp:ListItem>Yes - GCS Bill</asp:ListItem>
                                    <asp:ListItem>Yes - Direct Bill</asp:ListItem>
                                    <asp:ListItem>No</asp:ListItem>
                                    <asp:ListItem>Docs Out</asp:ListItem>
                                    <asp:ListItem>Follow Up</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="span2">
                                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="span7">
                                    <asp:ListItem>Default</asp:ListItem>
                                    <asp:ListItem>1st</asp:ListItem>
                                    <asp:ListItem>2nd</asp:ListItem>
                                    <asp:ListItem>3rd</asp:ListItem>
                                    <asp:ListItem>4th</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="span2">
                                <asp:DropDownList ID="DropDownList2" runat="server" CssClass="span9">
                                    <asp:ListItem>Monday</asp:ListItem>
                                    <asp:ListItem>Tuesday</asp:ListItem>
                                    <asp:ListItem>Webnesday</asp:ListItem>
                                    <asp:ListItem>Thursday</asp:ListItem>
                                    <asp:ListItem>Friday</asp:ListItem>
                                    <asp:ListItem>Saturday</asp:ListItem>
                                    <asp:ListItem>Sunday</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="span1">
                                <asp:DropDownList ID="DropDownList3" runat="server" CssClass="span9">
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                    <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                    <asp:ListItem>7</asp:ListItem>
                                    <asp:ListItem>8</asp:ListItem>
                                    <asp:ListItem>9</asp:ListItem>
                                    <asp:ListItem>10</asp:ListItem>
                                    <asp:ListItem>11</asp:ListItem>
                                    <asp:ListItem>12</asp:ListItem>
                                    <asp:ListItem>13</asp:ListItem>
                                    <asp:ListItem>14</asp:ListItem>
                                    <asp:ListItem>15</asp:ListItem>
                                    <asp:ListItem>16</asp:ListItem>
                                    <asp:ListItem>17</asp:ListItem>
                                    <asp:ListItem>18</asp:ListItem>
                                    <asp:ListItem>19</asp:ListItem>
                                    <asp:ListItem>20</asp:ListItem>
                                    <asp:ListItem>21</asp:ListItem>
                                    <asp:ListItem>22</asp:ListItem>
                                    <asp:ListItem>23</asp:ListItem>
                                    <asp:ListItem>24</asp:ListItem>
                                    <asp:ListItem>25</asp:ListItem>
                                    <asp:ListItem>26</asp:ListItem>
                                    <asp:ListItem>27</asp:ListItem>
                                    <asp:ListItem>28</asp:ListItem>
                                    <asp:ListItem>29</asp:ListItem>
                                    <asp:ListItem>30</asp:ListItem>
                                    <asp:ListItem>31</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="span2">
                                <asp:DropDownList ID="DropDownList4" runat="server" CssClass="span9">
                                    <asp:ListItem>Monthly</asp:ListItem>
                                    <asp:ListItem>Semi-Monthly</asp:ListItem>
                                    <asp:ListItem>Bi-Weekly</asp:ListItem>
                                    <asp:ListItem>Weekly</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="span1">
                                <asp:DropDownList ID="DropDownList5" runat="server" CssClass="span9">
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>
                    <div class="row-fluid">
                        <div class="span12">
                            <h3>
                            </h3>
                            <div class="span1">
                                Co-Client
                            </div>
                            <div class="span2">
                                <asp:DropDownList ID="DropDownList6" runat="server" CssClass="span9">
                                    <asp:ListItem>Yes - GCS Bill</asp:ListItem>
                                    <asp:ListItem>Yes - Direct Bill</asp:ListItem>
                                    <asp:ListItem>No</asp:ListItem>
                                    <asp:ListItem>Docs Out</asp:ListItem>
                                    <asp:ListItem>Follow Up</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="span2">
                                <asp:DropDownList ID="DropDownList7" runat="server" CssClass="span7">
                                    <asp:ListItem>Default</asp:ListItem>
                                    <asp:ListItem>1st</asp:ListItem>
                                    <asp:ListItem>2nd</asp:ListItem>
                                    <asp:ListItem>3rd</asp:ListItem>
                                    <asp:ListItem>4th</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="span2">
                               <asp:DropDownList ID="DropDownList8" runat="server" CssClass="span9">
                                    <asp:ListItem>Monday</asp:ListItem>
                                    <asp:ListItem>Tuesday</asp:ListItem>
                                    <asp:ListItem>Webnesday</asp:ListItem>
                                    <asp:ListItem>Thursday</asp:ListItem>
                                    <asp:ListItem>Friday</asp:ListItem>
                                    <asp:ListItem>Saturday</asp:ListItem>
                                    <asp:ListItem>Sunday</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="span1">
                                <asp:DropDownList ID="DropDownList9" runat="server" CssClass="span9">
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                    <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                    <asp:ListItem>7</asp:ListItem>
                                    <asp:ListItem>8</asp:ListItem>
                                    <asp:ListItem>9</asp:ListItem>
                                    <asp:ListItem>10</asp:ListItem>
                                    <asp:ListItem>11</asp:ListItem>
                                    <asp:ListItem>12</asp:ListItem>
                                    <asp:ListItem>13</asp:ListItem>
                                    <asp:ListItem>14</asp:ListItem>
                                    <asp:ListItem>15</asp:ListItem>
                                    <asp:ListItem>16</asp:ListItem>
                                    <asp:ListItem>17</asp:ListItem>
                                    <asp:ListItem>18</asp:ListItem>
                                    <asp:ListItem>19</asp:ListItem>
                                    <asp:ListItem>20</asp:ListItem>
                                    <asp:ListItem>21</asp:ListItem>
                                    <asp:ListItem>22</asp:ListItem>
                                    <asp:ListItem>23</asp:ListItem>
                                    <asp:ListItem>24</asp:ListItem>
                                    <asp:ListItem>25</asp:ListItem>
                                    <asp:ListItem>26</asp:ListItem>
                                    <asp:ListItem>27</asp:ListItem>
                                    <asp:ListItem>28</asp:ListItem>
                                    <asp:ListItem>29</asp:ListItem>
                                    <asp:ListItem>30</asp:ListItem>
                                    <asp:ListItem>31</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="span2">
                                <asp:DropDownList ID="DropDownList10" runat="server" CssClass="span9">
                                    <asp:ListItem>Monthly</asp:ListItem>
                                    <asp:ListItem>Semi-Monthly</asp:ListItem>
                                    <asp:ListItem>Bi-Weekly</asp:ListItem>
                                    <asp:ListItem>Weekly</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="span1">
                                <asp:DropDownList ID="DropDownList11" runat="server" CssClass="span9">
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>
              
</asp:Content>
