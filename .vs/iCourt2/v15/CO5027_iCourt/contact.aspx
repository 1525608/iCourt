<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="CO5027_iCourt.contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bodyContent" runat="server">

    <div class="container">
        <form id="contactForm" runat="server">
            <h3>Contact Us</h3>
            <asp:Label ID="lblStatus" runat="server" />

            <asp:Label AssociatedControlID="txtName" ID="lblName" runat="server" Text="Name"></asp:Label>
            <asp:TextBox ID="txtName" CssClass="form-input" runat="server" placeholder="Please enter your name here" />

            <asp:Label AssociatedControlID="txtEmail" ID="lblEmail" runat="server" Text="Email"></asp:Label>
            <asp:TextBox TextMode="Email" ID="txtEmail" CssClass="form-input" runat="server" placeholder="Please enter your email here" />

            <asp:Label AssociatedControlID="txtSubject" ID="lblSubject" runat="server" Text="Subject"></asp:Label>
            <asp:TextBox ID="txtSubject" CssClass="form-input" runat="server" placeholder="Please enter your subject here" />

            <asp:Label AssociatedControlID="txtMessage" ID="lblMessage" runat="server" Text="Message"></asp:Label>
            <asp:TextBox ID="txtMessage" CssClass="form-input" runat="server" placeholder="Please enter your message here" TextMode="MultiLine" Columns="30" Rows="5" />

            <asp:Button ID="Send" CssClass="submit" runat="server" Text="Send" OnClick="Send_Click" />
        </form>
    </div>

    <%--<div id="contact_form">
        <h3>Contact Us</h3>
        <form id="form" runat="server">
            <table align="center" width="60%">
                <tr>
                    <td class="auto-style4"><strong>Name</strong></td>
                    <td class="auto-style5">
                        <asp:TextBox ID="senderName" placeholder="Name" runat="server" />
                        <asp:RequiredFieldValidator ID="rfvName" runat="server" ErrorMessage="Name Required" ControlToValidate="senderName" ForeColor="Red" Style="text-align: left"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2"><strong>Email</strong></td>
                    <td class="auto-style3">
                        <asp:TextBox ID="senderEmail" placeholder="Email Address" runat="server" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Email Required" ControlToValidate="senderEmail" ForeColor="Red" Style="text-align: center"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="senderEmail" ErrorMessage="Use Valid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1"><strong>Subject</strong></td>
                    <td>
                        <asp:TextBox ID="subject" placeholder="Subject" runat="server" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Subject Required" ControlToValidate="subject" ForeColor="Red" Style="text-align: center"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1"><strong>Message</strong></td>
                    <td>
                        <asp:TextBox ID="message" placeholder="Message" runat="server" TextMode="MultiLine" MaxLength="100" Height="160" Width="285" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Message Required" ControlToValidate="message" ForeColor="Red" Style="text-align: center"></asp:RequiredFieldValidator>
                    <tr>
                        <td></td>
                        <td>
                            <asp:Button ID="Send" runat="server" Text="Send" OnClick="Send_Click" />
                        </td>
                    </tr>

                <tr>
                    <td></td>
                    <td>
                        <asp:Label ID="Status" runat="server" />
                    </td>
                </tr>
            </table>
        </form>
    </div>--%>

    <div class="container">
        <h3>Address</h3>
        <p>iCourt</p>
        <p>Simpang 98, Jalan Delima</p>
        <p>Kampong Serusop, Bandar Seri Begawan</p>
        <p>Negara Brunei Darussalam</p>
    </div>

    <h3>Map Location</h3>

    <div id="googleMap">
        <div style='overflow: hidden; height: 440px; width: 700px;'>
            <div id='gmap_canvas' style='height: 440px; width: 700px;'></div>
        </div>
    </div>

    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDQQZPGioynQP9nZJOietqO0mFs2F9OM3E&v=3.exp"></script>
    <script type="text/javascript" src="Scripts/GoogleMaps.js"></script>
</asp:Content>
