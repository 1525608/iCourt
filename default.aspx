<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="CO5027_iCourt._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bodyContent" runat="server">
    <p>iCourt offers a rental of an indoor court for a variety of sports. It makes it easier for the users to book the court at any devices anywhere anytime. Secure your court by placing your booking now!  </p>
        <table class="product_tbl">
            <tr>
                <td>
                    <div class="img_box">
                        <a href="productdetails.aspx"><asp:Image ID="badminton" runat="server" imageurl="~/Images/facilities/badminton.jpg" alt="badminton"/></a>
                    </div>
                    <h4>BADMINTON</h4>
                    
                </td>
                <td>
                    <div class="img_box">
                        <a href="productdetails.aspx"><asp:Image ID="basketball" runat="server" imageurl="Images/facilities/basketball.jpg" alt="basketball"/></a> 
                    </div>
                    <h4>BASKETBALL</h4>
                    
                </td>
                <td>
                    <div class="img_box">
                         <a href="productdetails.aspx"><asp:Image ID="netball" runat="server" imageurl="Images/facilities/netball.jpg" alt="netball"/></a>
                    </div>
                    <h4>NETBALL</h4>
                    
                </td>
            </tr>
            <tr>
                <td>
                    <div class="img_box">
                         <a href="productdetails.aspx"><asp:Image ID="volleyball" runat="server" imageurl="Images/facilities/volley.jpg" alt="volleyball"/></a>
                    </div>
                    <h4>VOLLEYBALL</h4>
                    
                </td>
                <td>
                    <div class="img_box">
                         <a href="productdetails.aspx"><asp:Image ID="dodgeball" runat="server" imageurl="Images/facilities/dodgeball.jpg" alt="dodgeball"/></a>
                    </div>
                    <h4>DODGEBALL</h4>
                    
                </td>
                <td>
                    <div class="img_box">
                         <a href="productdetails.aspx"><asp:Image ID="futsal" runat="server" imageurl="Images/facilities/futsal.jpg" alt="futsal" /></a>
                    </div>
                    <h4>FUTSAL</h4>
                    
                </td>
            </tr>
         </table>
</asp:Content>
