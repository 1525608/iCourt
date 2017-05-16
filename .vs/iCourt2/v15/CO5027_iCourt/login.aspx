<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="CO5027_iCourt.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bodyContent" runat="server">
        <form runat="server">

            <div class="container">
                <label><b>Username</b></label>
                <input type="text" placeholder="Enter Username" name="uname" required>

                <label><b>Password</b></label>
                <input type="password" placeholder="Enter Password" name="psw" required>

                <asp:Button ID="btnLogin" CssClass="signupbtn" Type="Button" runat="server" Text="Login" OnClick="Login_Click" />
                <input type="checkbox" checked="checked"> Remember me
            </div>

            <div class="container">
                <asp:Button runat="server" type="Button" CssClass="cancelbtn" Text="Cancel"/>
                <span class="psw">Forgot <a href="#">password?</a></span>
            </div>
        </form>

</asp:Content>
