<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="CO5027_iCourt.contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bodyContent" runat="server">

    <div class="container">
        <h1>Contact Us</h1>
        <h3>Fields marked with (*) are required to be filled in.</h3>
        <asp:Label ID="lblStatus" runat="server" />

        <div>
            <asp:Label AssociatedControlID="txtName" ID="lblName" runat="server" Text="Name*"></asp:Label>
            <asp:TextBox ID="txtName" CssClass="form-input" runat="server" placeholder="Please enter your name here" />
            <asp:RequiredFieldValidator CssClass="error" ErrorMessage="Please fill in name." runat="server" ControlToValidate="txtName" Display="Dynamic"></asp:RequiredFieldValidator>
        </div>
        <div>
            <asp:Label AssociatedControlID="txtEmail" ID="lblEmail" runat="server" Text="Email*"></asp:Label>
            <asp:TextBox TextMode="Email" ID="txtEmail" CssClass="form-input" runat="server" placeholder="Please enter your email here" />
            <asp:RequiredFieldValidator CssClass="error" ErrorMessage="Please fill in email address." runat="server" ControlToValidate="txtEmail" Display="Dynamic"></asp:RequiredFieldValidator>
        </div>
        <div>
            <asp:Label AssociatedControlID="ddlSubject" ID="lblSubject" runat="server" Text="Subject"></asp:Label>
            <%--<asp:TextBox ID="txtSubject" CssClass="form-input" runat="server" placeholder="Please enter your subject here" />--%>
            <asp:DropDownList ID="ddlSubject" runat="server" Class="form-control">
                <asp:ListItem Enabled="true" Text="Select Facility" Value="0"></asp:ListItem>
                <asp:ListItem Text="Login issues" Value="Login issues"></asp:ListItem>
                <asp:ListItem Text="Facilities Inquiry" Value="Facilities Inquiry"></asp:ListItem>
                <asp:ListItem Text="Accidentally booked the wrong date" Value="Accidentally booked the wrong date"></asp:ListItem>
            </asp:DropDownList>
        </div>

        <div>
            <asp:Label AssociatedControlID="txtMessage" ID="lblMessage" runat="server" Text="Message*"></asp:Label>
            <asp:TextBox ID="txtMessage" CssClass="form-input" runat="server" placeholder="Please enter your message here" TextMode="MultiLine" Columns="30" Rows="5" />
            <asp:RequiredFieldValidator CssClass="error" ErrorMessage="Please fill in message." runat="server" ControlToValidate="txtMessage" Display="Dynamic"></asp:RequiredFieldValidator>
        </div>
        <asp:Button ID="Send" runat="server" Text="Send" OnClick="Send_Click" />
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
        <div id="gmap_container">
            <div id="gmap_canvas" alt="iCourt, Simpang 98, Jalan Delima, Kampong Serusop, Bandar Seri Begawan, Brunei"></div>
        </div>
    </div>

    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDQQZPGioynQP9nZJOietqO0mFs2F9OM3E&v=3.exp"></script>
    <script type="text/javascript" src="Scripts/GoogleMaps.js"></script>
</asp:Content>
