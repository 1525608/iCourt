<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="CO5027_iCourt.login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bodyContent" runat="server">

    <div class="container">
        <h1>Log In</h1>
        <asp:Label runat="server" ID="lblLoginError" CssClass="error"></asp:Label>

        <div>
            <asp:Label AssociatedControlID="txtEmail" ID="lblEmail" runat="server" Text="Email"></asp:Label>
            <asp:TextBox TextMode="Email" ID="txtEmail" runat="server" placeholder="Please enter your email here" />
            <asp:RequiredFieldValidator CssClass="error" ErrorMessage="Please fill in email address." runat="server" ControlToValidate="txtEmail" Display="Dynamic"></asp:RequiredFieldValidator>
        </div>

        <div>
            <asp:Label AssociatedControlID="txtPassword" ID="lblPassword" runat="server" Text="Password"></asp:Label>
            <asp:TextBox TextMode="Password" ID="txtPassword" runat="server" placeholder="Please enter your password here" />
            <asp:RequiredFieldValidator CssClass="error" ErrorMessage="Please fill in password." runat="server" ControlToValidate="txtPassword" Display="Dynamic"></asp:RequiredFieldValidator>
        </div>

        <input type="checkbox" checked="checked"> Remember me
    </div>

    <div class="container">
        <asp:Button ID="btnLogin" CssClass="signupbtn" Type="Button" runat="server" Text="Login" OnClick="Login_Click" />
        <asp:Button runat="server" type="Button" CssClass="cancelbtn" Text="Cancel" OnClick="Cancel_Click" />
        <span class="psw"><a href="#">Forgot password?</a></span>
    </div>

</asp:Content>
