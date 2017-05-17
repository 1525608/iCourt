<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="CO5027_iCourt.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bodyContent" runat="server">

    <div class="container">
        <h1>Join Us!</h1>
        <asp:Label runat="server" ID="litRegisterError" CssClass="error" Text=""></asp:Label>
        <div id="content">
            <asp:Label AssociatedControlID="txtEmail" ID="lblEmail" runat="server" Text="Email"></asp:Label>
            <asp:TextBox TextMode="Email" ID="txtEmail" runat="server" placeholder="Please enter your email here" />

            <asp:Label AssociatedControlID="txtPassword" ID="lblPassword" runat="server" Text="Password"></asp:Label>
            <asp:TextBox TextMode="Password" ID="txtPassword" runat="server" placeholder="Please enter your password here" />

            <asp:Literal runat="server">Repeat Password</asp:Literal>
            <asp:Label AssociatedControlID="txtConfirmPassword" ID="lblConfirmPassword" runat="server" Text="Confirm Password"></asp:Label>
            <asp:TextBox TextMode="Password" ID="txtConfirmPassword" runat="server" placeholder="Please enter your password again here" />

            <asp:CheckBox runat="server" Checked="True" /> Remember me
            <p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p>

            <div class="clearfix">
                <asp:Button ID="btnSignUp" CssClass="signupbtn" Type="Button" runat="server" Text="Sign Up" OnClick="SignUp_Click" />
                <asp:Button ID="btnCancel" CssClass="cancelbtn" Type="Button" runat="server" Text="Cancel" OnClick="Cancel_Click" />
            </div>
        </div>
    </div>

</asp:Content>
