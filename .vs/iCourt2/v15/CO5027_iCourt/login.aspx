<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="CO5027_iCourt.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bodyContent" runat="server">
    <div class="login">
	
	    <form method="post" action="login.html">
	
        <p><input type="text" name="login" value="" placeholder="Username or Email"></p>
        <p><input type="password" name="password" value="" placeholder="Password"></p>
        <p class="remember_me">
          
	  <label>
            <input type="checkbox" name="remember_me" id="remember_me">
            Remember me on this computer
      </label>
        </p>
        <p class="submit"><input type="submit" name="commit" value="Login"></p>
     
      </form>
    </div>
	
      <div class="login-help">
        <p>Forgot your password? <a href="login.html">Click here to reset it</a>.</p>
    </div>
</asp:Content>
