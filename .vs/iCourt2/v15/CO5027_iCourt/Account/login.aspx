<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="CO5027_iCourt.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bodyContent" runat="server">
    
            <div class="container">
                <asp:Literal runat="server" ID="litLoginError" Text=""></asp:Literal>
                <asp:Label AssociatedControlID="txtEmail" ID="lblEmail" runat="server" Text="Email"></asp:Label>
                <asp:TextBox TextMode="Email" ID="txtEmail" runat="server" placeholder="Please enter your email here" />

                <asp:Label AssociatedControlID="txtPassword" ID="lblPassword" runat="server" Text="Password"></asp:Label>
                <asp:TextBox TextMode="Password" ID="txtPassword" runat="server" placeholder="Please enter your password here" />

                <asp:Button ID="btnLogin" CssClass="signupbtn" Type="Button" runat="server" Text="Login" OnClick="Login_Click" />
                <input type="checkbox" checked="checked"> Remember me
            </div>

            <div class="container">
                <asp:Button runat="server" type="Button" CssClass="cancelbtn" Text="Cancel"/>
                <span class="psw">Forgot <a href="#">password?</a></span>
            </div>

</asp:Content>
