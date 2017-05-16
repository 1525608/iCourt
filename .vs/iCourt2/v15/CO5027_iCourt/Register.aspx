﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="CO5027_iCourt.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bodyContent" runat="server">
    
    <form runat="server">
        <div class="container">
            <h3>Join Us!</h3>

            <asp:Label AssociatedControlID="txtEmail" ID="lblEmail" runat="server" Text="Email"></asp:Label>
            <asp:TextBox TextMode="Email" ID="txtEmail" runat="server" placeholder="Please enter your email here" />

            <asp:Label AssociatedControlID="txtPassword" ID="lblPassword" runat="server" Text="Password"></asp:Label>
            <asp:TextBox TextMode="Password" ID="txtPassword" runat="server" placeholder="Please enter your password here" />
            
            <asp:Literal runat="server">Repeat Password</asp:Literal>
            <asp:Label AssociatedControlID="txtConfirmPassword" ID="lblConfirmPassword" runat="server" Text="Confirm Password"></asp:Label>
            <asp:TextBox TextMode="Password" ID="txtConfirmPassword" runat="server" placeholder="Please enter your password again here" />

            <asp:CheckBox runat="server" checked="True"/> Remember me
            <p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p>

            <div class="clearfix">
                <asp:Button ID="btnCancel" CssClass="cancelbtn" Type="Button" runat="server" Text="Cancel" OnClick="Cancel_Click" />
                <asp:Button ID="btnSignUp" CssClass="signupbtn" Type="Button" runat="server" Text="Sign Up" OnClick="SignUp_Click" />
            </div>
        </div>
    </form>

</asp:Content>
