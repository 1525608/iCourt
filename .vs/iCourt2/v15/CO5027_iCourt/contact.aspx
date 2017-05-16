<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="CO5027_iCourt.contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bodyContent" runat="server">

    <div class="container">
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
    </div>

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
